---
id: configuring-external-resource-loading
url: comparison/java/configuring-external-resource-loading
title: Three Ways to Handle External Resources When Comparing Documents - Complete Comparison Guide
weight: 10
description: "Compare 3 approaches to external resource loading in GroupDocs.Comparison for Java. The default of skipping external resources, URL-fragment whitelisting, and loading everything, with code examples."
keywords: external resources, setSkipExternalResources, setWhitelistedResources, LoadOptions, document comparison, comparison, best practices, java external resource loading
productName: GroupDocs.Comparison for Java
structuredData:
    showOrganization: True
hideChildren: False
toc: True
draft: false
---

## Introduction

Open a Word document that references an image by URL, and something can happen before any
comparison begins: the loader resolves that reference over the network. For a document
you authored, that is simply how linked images work. For one that arrived by email, an
unknown host just received a request from your server.

Two settings on `LoadOptions` in GroupDocs.Comparison for Java decide this, giving
three distinct configurations. The choice is about where your documents come from rather
than about performance, so this guide compares them on what each lets through, what it
blocks, and how to confirm it took effect.

## What This Guide Covers

Each configuration below gives the code, how the setting behaves, and which
references survive it.

**Prerequisites:**
- Java 8 or later, with GroupDocs.Comparison for Java 26.10 or newer (26.11 or newer for presentations)
- Documents that carry external references - linked images or `INCLUDEPICTURE` fields

{{< alert style="warning" >}}
**Behaviour change in 26.10.** Earlier versions always loaded external resources. Starting with 26.10, they are **skipped by default**. If your comparison relies on remote images, set `setSkipExternalResources(false)` or whitelist them, as described below.
{{< /alert >}}

The examples below call a small helper that applies the same `LoadOptions` to the source and the target:

```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.load.LoadOptions;
import java.util.Arrays;
// ...

private static void runComparison(String sourcePath, String targetPath, String outputPath,
                                  LoadOptions loadOptions) {
    try (Comparer comparer = new Comparer(sourcePath, loadOptions)) {
        comparer.add(targetPath, loadOptions);
        comparer.compare(outputPath);
    }
}
```

## Method Comparison Overview

| Method | Complexity | Flexibility | Best For |
|--------|-----------|-------------|----------|
| **Default: skip all external resources** | None - no configuration | None - all or nothing | Documents from outside your systems |
| **Skip with a whitelist** | One setting | Per-reference | Trusted templates among untrusted content |
| **Load all external resources** | One setting | None - all or nothing | Documents from sources you trust |

## Detailed Method Analysis

### Method 1: Default Behaviour - Skip Every External Resource

**Overview:** `LoadOptions.isSkipExternalResources()` returns `true` by default, so a document
loaded without configuration has none of its remote references resolved. No request is
issued, and referenced images are absent from the result. This is the right default for
documents you did not create.

#### How It Works

The loader still parses relationships and field codes, but does not act on the external
ones. Comparison proceeds normally - the setting governs resource loading, not
difference detection, so the textual and structural changes between the two documents
are found exactly as before.

#### When to Use

- ✅ User-uploaded documents in a web application
- ✅ Automated comparison on build agents and servers
- ✅ Any document whose reference URLs you have not reviewed
- ❌ Not recommended for: trusted templates whose linked images are part of the content

The trade-off is that it is all or nothing: a wanted linked image is blocked with the
rest, and the result lacks it without saying so.

#### Implementation

```java
LoadOptions loadOptions = new LoadOptions();
// isSkipExternalResources() is already true; setting it states the intent explicitly
loadOptions.setSkipExternalResources(true);

runComparison(sourcePath, targetPath, outputPath, loadOptions);
```

### Method 2: Skip Everything Except Named References

**Overview:** `setWhitelistedResources()` takes a `List<String>` of URL fragments and is
consulted only while external resources are skipped. It turns an all-or-nothing switch
into a per-reference decision: block by default, then name what is still allowed.

#### How It Works

With skipping enabled, each external reference URL is tested against the whitelist
entries. An entry that appears anywhere in the URL admits that reference; everything
else stays blocked. Because matching is on fragments rather than file names, an entry
such as `"includepicture-field.png"` admits the resource whatever scheme, host and path
precede it - the whitelist travels between environments without rewriting.

#### When to Use

- ✅ Corporate templates that pull branding from a known internal URL
- ✅ Mixed document sets where some references are yours and some are not
- ✅ Migrating from the old "load everything" behaviour without losing a needed image
- ❌ Not recommended for: cases where no reference needs resolving - Method 1 is simpler

Two cautions: a short or generic fragment can match more references than intended, and
a renamed asset silently stops being whitelisted.

#### Implementation

```java
LoadOptions loadOptions = new LoadOptions();
loadOptions.setSkipExternalResources(true);
loadOptions.setWhitelistedResources(Arrays.asList("includepicture-field.png"));

runComparison(sourcePath, targetPath, outputPath, loadOptions);
```

### Method 3: Load All External Resources

**Overview:** Setting `setSkipExternalResources(false)` restores the behaviour of versions
before 26.10: every remote reference is resolved. This matches what Word does when it
renders the page, which makes it the right choice for fidelity and the wrong one for
documents of unknown provenance.

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

```java
LoadOptions loadOptions = new LoadOptions();
loadOptions.setSkipExternalResources(false);

runComparison(sourcePath, targetPath, outputPath, loadOptions);
```

## Side-by-Side Feature Comparison

| Feature | Skip All (default) | Skip + Whitelist | Load All |
|---------|---------|----------|------------------|
| **Linked images resolved** | No | Only whitelisted | Yes |
| **`INCLUDEPICTURE` fields resolved** | No | Only whitelisted | Yes |
| **Outbound requests made** | None | Only whitelisted | Yes, all |
| **Per-reference control** | No | Yes | No |
| **Settings to change** | None | 1 | 1 |

## Format Coverage

The settings apply to Word documents, presentations and HTML pages, with two differences
worth knowing:

- **HTML pages** support only the all-or-nothing switch. The whitelist is not consulted, so
  with skipping enabled no external resource of an HTML page is loaded. Scripts, hyperlink
  targets and form actions (`<script src>`, `<a href>`, `<form action>`) are never fetched,
  whatever the settings say - nothing needs them to render or compare a page.
- **Presentations** follow the settings from version 26.11. The result presentation never
  fetches external resources, and a picture that was not loaded is compared as an empty
  picture.

## Applying Load Options To Source And Target

One detail decides whether any of the above takes effect. Load options configure how a
single document is loaded: the `Comparer` constructor takes the options for the source,
and each `add()` call takes the options for that target.

```java
try (Comparer comparer = new Comparer(sourcePath, loadOptions)) {
    comparer.add(targetPath, loadOptions);
    comparer.compare(outputPath);
}
```

Pass the options to the constructor only, and the target is loaded with the default
`LoadOptions`. With the default of skipping external resources that is harmless, but if you
relaxed the settings for the source - to load everything or to whitelist an image - the
target still has its references blocked, and the two documents are compared with different
content. Where source and target need different treatment, pass separate `LoadOptions`
instances.

## Best Practices and Recommendations

### Choosing a Default

Keep the default of skipping external resources for any document your application did not
generate, and relax it deliberately. The reverse order - starting permissive and restricting
after a problem - means the permissive behaviour has already run in production.

### Verifying the Setting Took Effect

A blocked resource leaves little trace - the output document is simply missing an image.
Confirm behaviour from the serving side or with a network trace rather than by reading
the result file: serve the referenced images yourself and count the requests per
comparison.

## FAQ

**Q: Does the whitelist work on its own?**
A: No. It is consulted only while external resources are skipped. A whitelist set together
with `setSkipExternalResources(false)` has no effect, because nothing is being blocked for it
to make an exception to.

**Q: Are whitelist entries file names or URLs?**
A: Neither exactly - they are URL fragments, matched against the reference URL. A file
name works as a fragment, which is why `"logo.png"` admits that image from any host. The
flip side is that a short fragment may match references you did not intend, so prefer
one specific enough to identify a single resource.

**Q: Do I need to set load options on both the source and the target?**
A: Yes. Options passed to the `Comparer` constructor apply to the source document only;
each target needs its options passed to its own `add()` call.

**Q: My comparison lost its linked images after upgrading. Why?**
A: Version 26.10 made skipping external resources the default. Whitelist the images you
need, or call `setSkipExternalResources(false)` for documents you trust.

## Conclusion

The choice follows document provenance. Documents from anywhere else are covered by the
default - external resources are skipped with no configuration. Documents your own systems
produced can load everything with `setSkipExternalResources(false)`. Reach for
`setWhitelistedResources()` only where a specific reference genuinely needs to resolve, and
keep its fragments narrow.

Whichever you pick, pass the options to the `Comparer` constructor and to every `add()`
call, and verify from the serving side rather than from the output file.

## See Also

- [LoadOptions API reference](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.load/loadoptions/) - all load settings
- [Load password-protected documents]({{< ref "comparison/java/advanced-usage/loading/load-password-protected-documents.md" >}}) - the password sibling setting, with the same per-document scope rule
- [Load custom fonts]({{< ref "comparison/java/advanced-usage/loading/load-custom-fonts.md" >}}) - resolving non-standard fonts at load time with `setFontDirectories()`
- [Specify file type manually]({{< ref "comparison/java/advanced-usage/loading/specify-file-type-manually.md" >}}) - skipping format auto-detection with `setFileType()`
