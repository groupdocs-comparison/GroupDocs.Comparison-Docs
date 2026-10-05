---
id: compare-password-protected-documents
url: comparison/java/compare-password-protected-documents
title: Comparing Password-Protected Documents in Java - Five Approaches Compared
weight: 3
description: "Compare encrypted PDF and Word documents with GroupDocs.Comparison for Java. Five approaches covering per-document LoadOptions passwords, PasswordSaveOption on the result, format-specific display modes, and when a missing password actually throws."
keywords: compare password protected pdf, LoadOptions password, PasswordSaveOption, encrypted document comparison, PdfCompareOptions, WordCompareOptions, PasswordProtectedFileException, InvalidPasswordException, comparison, best practices, java compare encrypted documents
productName: GroupDocs.Comparison for Java
structuredData:
    showOrganization: True
toc: true
draft: false
---

## Introduction

A password on a document changes three things about comparing it, and none of
them are obvious from the plaintext examples. Each document carries its own
protection, so a single password field cannot describe two encrypted files. The
result document has its own protection state, independent of the inputs, and the
default leaves it unprotected. And the failure for a missing password does not
arrive where most developers place their `try` block.

This guide compares five approaches to comparing password-protected documents
with GroupDocs.Comparison for Java. Each is evaluated on:

- **Implementation complexity**
- **Use case suitability**
- **What protects the result**
- **Format coverage**

**Prerequisites:**
- Java 8 or later, with GroupDocs.Comparison for Java 26.9 or later (see [Installation]({{< ref "comparison/java/getting-started/installation.md" >}}))
- Two encrypted documents of the same format and their passwords

The snippets below use these imports:

```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.common.exceptions.InvalidPasswordException;
import com.groupdocs.comparison.common.exceptions.PasswordProtectedFileException;
import com.groupdocs.comparison.options.PdfCompareOptions;
import com.groupdocs.comparison.options.WordCompareOptions;
import com.groupdocs.comparison.options.enums.PasswordSaveOption;
import com.groupdocs.comparison.options.load.LoadOptions;
import com.groupdocs.comparison.options.save.SaveOptions;
```

## Quick Decision Matrix

| Scenario | Recommended Method | Why |
|----------|------------------|-----|
| One marked-up file, protection preserved | Inline with `PasswordSaveOption.SOURCE` | Result reuses the source password automatically |
| Parallel reading of original and revision | Side-by-side PDF mode | Two columns survive printing and page-by-page sign-off |
| Reviewer accepts or rejects each edit | Word revisions mode | Changes become native Word revisions |
| Diff goes to people without either password | `PasswordSaveOption.USER` | Issues a new password for the result only |
| Passwords come from user input | Guard the `compare()` call | That is the only place a bad password throws |

## Detailed Method Analysis

### Method 1: Inline PDF comparison

Overview: Opens two encrypted PDFs, each with its own password, and writes
one result file with insertions and deletions marked in place. This is the
baseline that the other approaches modify.

#### How It Works

The source password goes into a `LoadOptions` passed to the `Comparer`
constructor. The target password goes into a second `LoadOptions` passed to
`add()`. `PdfCompareOptions` with the display mode set to `INLINE` merges the
changes into the text, and `PasswordSaveOption.SOURCE` reuses the source
document's password on the output rather than leaving it open.

#### When to Use

- ✅ One deliverable that a reviewer reads top to bottom
- ✅ The result must stay at least as protected as the inputs
- ✅ Both documents are PDFs
- ❌ Not recommended for: reviewers who need to accept or reject edits individually

#### Implementation

```java
PdfCompareOptions options = new PdfCompareOptions();
options.setDisplayMode(PdfCompareOptions.ComparisonDisplayMode.INLINE);
options.setPasswordSaveOption(PasswordSaveOption.SOURCE);

try (Comparer comparer = new Comparer(sourcePath, new LoadOptions(SOURCE_PASSWORD))) {
    comparer.add(targetPath, new LoadOptions(TARGET_PASSWORD));
    comparer.compare(outputPath, options);
}
```

### Method 2: Side-by-side PDF comparison

Overview: The same two encrypted PDFs rendered as parallel columns instead of
merged markup. The loading code does not change at all.

#### How It Works

Only the display mode differs from Method 1. That is the substantive point:
protection lives entirely in `LoadOptions`, so the full set of comparison options
stays available on encrypted input. `PdfCompareOptions` also offers
`INTERLEAVED` alongside `INLINE` and `SIDE_BY_SIDE`.

#### When to Use

- ✅ Reviewers compare versions visually, page by page
- ✅ The output will be printed or signed off in sections
- ✅ Changes are dense enough that inline markup obscures the text
- ❌ Not recommended for: narrow display surfaces where two columns do not fit

#### Implementation

```java
PdfCompareOptions options = new PdfCompareOptions();
options.setDisplayMode(PdfCompareOptions.ComparisonDisplayMode.SIDE_BY_SIDE);
options.setPasswordSaveOption(PasswordSaveOption.SOURCE);

try (Comparer comparer = new Comparer(sourcePath, new LoadOptions(SOURCE_PASSWORD))) {
    comparer.add(targetPath, new LoadOptions(TARGET_PASSWORD));
    comparer.compare(outputPath, options);
}
```

### Method 3: Word revisions comparison

Overview: Compares two encrypted DOCX files and records every difference as a
native Word revision, so the reviewer can accept or reject each one in Word.

#### How It Works

The loading code is identical to the PDF methods, because the `LoadOptions`
password is format-agnostic — the same property unlocks PDF, DOCX, XLSX and
PPTX. What changes is the options class. `WordCompareOptions` exposes
`ComparisonDisplayMode.REVISIONS`, which writes tracked changes rather than
baking markup into the text. Note that this enum is distinct from the
identically named one on `PdfCompareOptions` and carries different values.

#### When to Use

- ✅ The reviewer works in Word and wants per-change control
- ✅ The document continues through an editorial workflow after comparison
- ✅ Encrypted DOCX support is being added to code that already handles PDFs
- ❌ Not recommended for: read-only distribution, where revisions can be toggled off

#### Implementation

```java
WordCompareOptions options = new WordCompareOptions();
options.setDisplayMode(WordCompareOptions.ComparisonDisplayMode.REVISIONS);
options.setPasswordSaveOption(PasswordSaveOption.SOURCE);

try (Comparer comparer = new Comparer(sourcePath, new LoadOptions(SOURCE_PASSWORD))) {
    comparer.add(targetPath, new LoadOptions(TARGET_PASSWORD));
    comparer.compare(outputPath, options);
}
```

### Method 4: Protecting the result with a new password

Overview: Compares two encrypted PDFs and protects the output with a third
password belonging to neither input, so the diff can circulate without exposing
either original.

#### How It Works

`PasswordSaveOption.USER` tells GroupDocs.Comparison to ignore both input
passwords and take the one from `SaveOptions`. Both option objects are passed to
the three-argument `compare()` overload. Setting the `SaveOptions` password on
its own has no effect: the enum value is what activates the save-side password.

#### When to Use

- ✅ The comparison goes to a wider audience than the source documents
- ✅ Audit or compliance rules require the diff to be encrypted at rest
- ✅ Input passwords must not be shared onward
- ❌ Not recommended for: internal runs where recipients already hold both passwords

#### Implementation

```java
PdfCompareOptions compareOptions = new PdfCompareOptions();
compareOptions.setDisplayMode(PdfCompareOptions.ComparisonDisplayMode.INLINE);
compareOptions.setPasswordSaveOption(PasswordSaveOption.USER);

SaveOptions saveOptions = new SaveOptions();
saveOptions.setPassword("5678");

try (Comparer comparer = new Comparer(sourcePath, new LoadOptions(SOURCE_PASSWORD))) {
    comparer.add(targetPath, new LoadOptions(TARGET_PASSWORD));
    comparer.compare(outputPath, saveOptions, compareOptions);
}
```

### Method 5: Handling the deferred failure

Overview: Shows when a missing or wrong password actually throws.

#### How It Works

Constructing a `Comparer` over an encrypted file with no `LoadOptions` succeeds.
So does `add()`. Both only record the documents. The documents are opened when
`compare()` runs, and that is where the exception is thrown:

- a **missing** password raises `PasswordProtectedFileException` with the message
  `Password is missing`;
- a **wrong** password raises a subclass of `InvalidPasswordException` for the
  document format (`InvalidPdfPasswordException`, `InvalidWordsPasswordException`,
  `InvalidCellPasswordException`, …) with the message `Invalid password`.

Both are unchecked exceptions. Catch both types to cover every case.

#### When to Use

- ✅ Passwords come from user input or a credential store and may be wrong
- ✅ A batch pipeline needs to report which documents failed and why
- ✅ Existing error handling wraps construction and never fires
- ❌ Not recommended for: skipping validation entirely on trusted internal input

#### Implementation

```java
try (Comparer comparer = new Comparer(sourcePath)) {
    comparer.add(targetPath);
    comparer.compare(outputPath);
} catch (PasswordProtectedFileException | InvalidPasswordException ex) {
    System.out.println("Password rejected at compare: " + ex.getMessage());
}
```

## Side-by-Side Feature Comparison

| Feature | Inline PDF | Side-by-side PDF | Word revisions | New password |
|---------|----------|----------|----------|----------|
| **Formats** | PDF | PDF | Word (DOCX, DOC, RTF, …) | Any supported |
| **Result protection** | Source password | Source password | Source password | New password |
| **Options class** | `PdfCompareOptions` | `PdfCompareOptions` | `WordCompareOptions` | Either |
| **Per-change actions** | No | No | Yes, in Word | No |
| **Extra settings** | None | None | None | `SaveOptions` |

## Best Practices and Recommendations

### For user-supplied passwords

Wrap the `compare()` call, not the constructor. Catch
`PasswordProtectedFileException` and `InvalidPasswordException` and report which
document path failed, because a multi-target comparison gives no other indication
of which password was wrong.

### For compliance-sensitive output

Set `PasswordSaveOption` explicitly on every comparison, even when the intended
value is the default. The default is `NONE`, and a comparison of two encrypted
documents that writes an unprotected result is easy to miss in review.

## Common Pitfalls and How to Avoid Them

1. **One `LoadOptions` for every document**
   - Problem: Options passed to the constructor apply to the source only; the
     target has no password and the comparison fails at `compare()`.
   - Solution: Build a separate `LoadOptions` for each `add()` call.

2. **An unprotected result from protected inputs**
   - Problem: `PasswordSaveOption` defaults to `NONE`, so the output of two
     encrypted documents is written with no password at all.
   - Solution: Set `SOURCE`, `TARGET` or `USER` explicitly.

3. **Unqualified `ComparisonDisplayMode`**
   - Problem: Both `PdfCompareOptions` and `WordCompareOptions` declare a
     nested enum of that name with different values, so importing both by their
     simple name does not compile.
   - Solution: Write `PdfCompareOptions.ComparisonDisplayMode.INLINE` or
     `WordCompareOptions.ComparisonDisplayMode.REVISIONS`.

## Do the source and target need the same password?

No. Each document is unlocked by its own `LoadOptions` instance, so the two
passwords are entirely independent. The examples above use different passwords
for the source and the target on purpose, because a single shared password hides
the fact that the constructor's options never reach the targets. Pass one
`LoadOptions` per document and mixed passwords stop being a special case.

## FAQ

**Q: What protects the comparison result?**
A: Whatever `PasswordSaveOption` names. `NONE` leaves it unprotected, `SOURCE`
and `TARGET` reuse an input password, and `USER` takes the value from the
`SaveOptions` password. The default is `NONE`, so protected inputs do not imply
a protected result.

**Q: Can I combine these approaches?**
A: Yes. Display mode and result protection are independent settings, so a
side-by-side comparison can carry a new user password. The only pairing
requirement is `PasswordSaveOption.USER` together with the `SaveOptions` password.

**Q: Why doesn't my try/catch around the constructor fire?**
A: Because the constructor does not open the document. It records it, as does
`add()`. Both documents are read when `compare()` executes, so that is where the
exception is raised for a missing or wrong password.

**Q: Are there licensing considerations?**
A: Unlicensed runs work but watermark the output. A free [temporary license](https://purchase.groupdocs.com/temporary-license/)
removes evaluation limits for testing.

## Conclusion

Password handling in GroupDocs.Comparison reduces to three decisions. Give every
document its own `LoadOptions` password. Choose the result's protection with
`PasswordSaveOption` rather than accepting the `NONE` default. And guard
`compare()`, because that is where a bad password is detected. Once those are in
place, encrypted documents behave like any other input and the full comparison
feature set applies.

## See Also

- [Load password-protected documents]({{< ref "comparison/java/advanced-usage/loading/load-password-protected-documents.md" >}}) – the reference page for per-document passwords
- [Compare multiple documents protected by password]({{< ref "comparison/java/advanced-usage/comparison/compare-multiple-documents/compare-multiple-documents-protected-by-password.md" >}}) – extending the pattern to several encrypted targets
- [Set password for output document]({{< ref "comparison/java/advanced-usage/saving/set-password-for-resultant-document.md" >}}) – how `PasswordSaveOption` and `SaveOptions` interact
- [Word document comparison options]({{< ref "comparison/java/advanced-usage/comparison/word-compare-options.md" >}}) – the `REVISIONS` and `HIGHLIGHT` display modes
- [API Reference](https://reference.groupdocs.com/comparison/java/) – full API details for GroupDocs.Comparison for Java
