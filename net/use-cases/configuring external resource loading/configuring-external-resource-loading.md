---
id: configuring-external-resource-loading
url: comparison/net/configuring-external-resource-loading
title: Three Ways to Handle External Resources When Comparing Documents - Complete Comparison Guide
weight: 10
description: "Compare 3 approaches to external resource loading in GroupDocs.Comparison for .NET. SkipExternalResources, URL-fragment whitelisting, and the default behaviour, with code examples and verified request counts."
keywords: external resources, SkipExternalResources, WhitelistedResources, LoadOptions, document comparison, comparison, best practices, net external resource loading
productName: GroupDocs.Comparison for .NET
structuredData:
    showOrganization: True
hideChildren: False
toc: True
draft: false
---

## Introduction

Open a Word document that references an image by URL, and something happens before any
comparison begins: the loader resolves that reference over the network. For a document
you authored, that is simply how linked images work. For one that arrived by email, an
unknown host just received a request from your server.

Two properties on `LoadOptions` in GroupDocs.Comparison for .NET decide this, giving
three distinct configurations. The choice is about where your documents come from rather
than about performance, so this guide compares them on what each lets through, what it
blocks, and how to confirm it took effect.

## What This Guide Covers

Each configuration below gives the code, how the setting behaves, and which
references survive it. The request counts quoted come from a runnable sample that
serves the referenced images from a loopback endpoint and logs every request, so each
effect is measured rather than asserted.

**Prerequisites:**
- .NET 8.0 or later, with GroupDocs.Comparison 26.9.0 or newer
- Documents that carry external references - linked images or `INCLUDEPICTURE` fields

{{< alert style="info" >}}
**Complete Source Code:** All examples are available in our [GitHub repository](https://github.com/groupdocs-comparison/block-external-resources-on-document-load-dotnet). Clone, run, and customize for your needs.
{{< /alert >}}

## Method Comparison Overview

| Method | Complexity | Flexibility | Best For |
|--------|-----------|-------------|----------|
| **Default: external resources resolved** | None - no configuration | None - all or nothing | Documents from sources you trust |
| **Skip all external resources** | One property | None - all or nothing | Documents from outside your systems |
| **Skip with a whitelist** | Two properties | Per-reference | Trusted templates among untrusted content |

## Detailed Method Analysis

### Method 1: Default Behaviour - External Resources Resolved

**Overview:** `LoadOptions.SkipExternalResources` defaults to `false`, so a document
loaded without configuration has its remote references resolved. This matches what Word
does when it renders the page, which makes it the right default for fidelity and the
wrong one for documents of unknown provenance.

#### How It Works

As the document is loaded, the library walks its relationships and field codes. A
relationship with `TargetMode="External"` and an `INCLUDEPICTURE` field code both carry
absolute URLs, and both are followed. The fetched image becomes part of the loaded
document and therefore part of the comparison result.

#### When to Use

- ✅ Documents produced by your own application or templates
- ✅ Reference URLs that point at infrastructure you operate
- ✅ Cases where a missing linked image would make the comparison misleading
- ❌ Not recommended for: documents received from outside your organisation

The cost is that every reference URL is contacted, whoever put it there, and a slow or
unreachable host delays loading by the full connection timeout.

#### Implementation

```csharp
LoadOptions loadOptions = new LoadOptions
{
    SkipExternalResources = false
};

RunComparison(sourcePath, targetPath, outputPath, loadOptions);
```

### Method 2: Skip Every External Resource

**Overview:** Setting `SkipExternalResources` to `true` stops remote reference
resolution for that document entirely. No request is issued, and referenced images are
absent from the result. It is a single property, and it is the configuration to default
to for documents you did not create.

#### How It Works

The loader still parses relationships and field codes, but does not act on the external
ones. Comparison proceeds normally - the setting governs resource loading, not
difference detection, so the textual and structural changes between the two documents
are found exactly as before. In the reference sample, this configuration produces zero
requests against the serving host.

#### When to Use

- ✅ User-uploaded documents in a web application
- ✅ Automated comparison on build agents and servers
- ✅ Any document whose reference URLs you have not reviewed
- ❌ Not recommended for: trusted templates whose linked images are part of the content

The trade-off is that it is all or nothing: a wanted linked image is blocked with the
rest, and the result lacks it without saying so.

#### Implementation

```csharp
LoadOptions loadOptions = new LoadOptions
{
    SkipExternalResources = true
};

RunComparison(sourcePath, targetPath, outputPath, loadOptions);
```

### Method 3: Skip Everything Except Named References

**Overview:** `WhitelistedResources` takes a `List<string>` of URL fragments and is
consulted only when `SkipExternalResources` is `true`. It turns an all-or-nothing switch
into a per-reference decision: block by default, then name what is still allowed.

#### How It Works

With skipping enabled, each external reference URL is tested against the whitelist
entries. An entry that appears anywhere in the URL admits that reference; everything
else stays blocked. Because matching is on fragments rather than file names, an entry
such as `"includepicture-field.png"` admits the resource whatever scheme, host and path
precede it - the whitelist travels between environments without rewriting. In the
reference sample, this configuration fetches the whitelisted image and leaves the
second, uncovered image blocked.

#### When to Use

- ✅ Corporate templates that pull branding from a known internal URL
- ✅ Mixed document sets where some references are yours and some are not
- ✅ Migrating from the default behaviour without losing a needed image
- ❌ Not recommended for: cases where no reference needs resolving - Method 2 is simpler

Two cautions: a short or generic fragment can match more references than intended, and
a renamed asset silently stops being whitelisted.

#### Implementation

```csharp
LoadOptions loadOptions = new LoadOptions
{
    SkipExternalResources = true,
    WhitelistedResources = new List<string> { WhitelistedImageName }
};

RunComparison(sourcePath, targetPath, outputPath, loadOptions);
```

## Side-by-Side Feature Comparison

| Feature | Default | Skip All | Skip + Whitelist |
|---------|---------|----------|------------------|
| **Linked images resolved** | Yes | No | Only whitelisted |
| **`INCLUDEPICTURE` fields resolved** | Yes | No | Only whitelisted |
| **Outbound requests made** | Yes, all | None | Only whitelisted |
| **Per-reference control** | No | No | Yes |
| **Properties to set** | None | 1 | 2 |

## Applying Load Options To Source And Target

One detail decides whether any of the above takes effect. Load options configure how a
single document is loaded: the `Comparer` constructor takes the options for the source,
and each `Add()` call takes the options for that target.

```csharp
using (Comparer comparer = new Comparer(sourcePath, loadOptions))
{
    comparer.Add(targetPath, loadOptions);
    comparer.Compare(outputPath);
}
```

Pass the options to the constructor only, and the source document is protected while
every target still resolves its references. The comparison succeeds and the result looks
reasonable, which is what makes this worth checking first when the setting appears to be
ignored. Where source and target need different treatment, pass separate `LoadOptions`
instances.

## Best Practices and Recommendations

### Choosing a Default

Treat `SkipExternalResources = true` as the baseline for any document your application
did not generate, and relax it deliberately. The reverse order - starting permissive and
restricting after a problem - means the permissive behaviour has already run in
production.

### Verifying the Setting Took Effect

A blocked resource leaves little trace - the output document is simply missing an image.
Confirm behaviour from the serving side or with a network trace rather than by reading
the result file. The reference sample takes this approach: it serves the images itself
and prints the request count per comparison.

## FAQ

**Q: Does `WhitelistedResources` work on its own?**
A: No. It is consulted only when `SkipExternalResources` is `true`. A whitelist set
while skipping is disabled has no effect, because nothing is being blocked for it to
make an exception to. This is the most common reason a whitelist appears to be ignored.

**Q: Are whitelist entries file names or URLs?**
A: Neither exactly - they are URL fragments, matched against the reference URL. A file
name works as a fragment, which is why `"logo.png"` admits that image from any host. The
flip side is that a short fragment may match references you did not intend, so prefer
one specific enough to identify a single resource.

**Q: Do I need to set load options on both the source and the target?**
A: Yes. Options passed to the `Comparer` constructor apply to the source document only;
each target needs its options passed to its own `Add()` call. Setting them in one place
and not the other is the second common reason these settings appear not to work.

## Conclusion

The choice follows document provenance. Documents your own systems produced can keep the
default. Documents from anywhere else warrant `SkipExternalResources = true` - a single
property, and the sound baseline. Reach for `WhitelistedResources` only where a specific
reference genuinely needs to resolve, and keep its fragments narrow.

Whichever you pick, pass the options to the `Comparer` constructor and to every `Add()`
call, and verify from the serving side rather than from the output file.

**Next Steps:**
- Explore the [complete source code](https://github.com/groupdocs-comparison/block-external-resources-on-document-load-dotnet) on GitHub
- Review the [API documentation](https://reference.groupdocs.com/comparison/net/) for advanced features
- Read the companion article on [why opened documents reach out to the network](https://blog.groupdocs.com/comparison/configuring-external-resource-loading-net/)

## See Also

- [Product documentation](https://docs.groupdocs.com/comparison/net/) - getting started and advanced topics
- [API Reference](https://reference.groupdocs.com/comparison/net/) - full API details for GroupDocs.Comparison for .NET
- [GitHub repository](https://github.com/groupdocs-comparison/block-external-resources-on-document-load-dotnet) - complete source code and more examples
- [Load password-protected documents](https://docs.groupdocs.com/comparison/net/load-password-protected-documents/) - the `LoadOptions.Password` sibling setting, with the same per-document scope rule
- [Load custom fonts](https://docs.groupdocs.com/comparison/net/load-custom-fonts/) - resolving non-standard fonts at load time with `LoadOptions.FontDirectories`
- [Specify file type manually](https://docs.groupdocs.com/comparison/net/specify-file-type-manually/) - skipping format auto-detection with `LoadOptions.FileType`
