---
id: accept-or-reject-detected-changes
url: comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes
title: Accept or Reject Detected Changes
linkTitle: Accept or reject changes
weight: 10
description: "Programmatically accept or reject individual detected changes and save the merged result using GroupDocs.Comparison for Python via .NET."
keywords: accept changes, reject changes, apply changes, ComparisonAction, ApplyChangeOptions, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/accept-or-reject-detected-changes/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to accept or reject detected changes in Python
    description: Learn how to accept or reject detected changes in Python step by step
    steps:
      - name: Create a Comparer and load the source
        text: Instantiate Comparer with a source file path or stream.
      - name: Add the target
        text: Add the target document via add().
      - name: Compare and get changes
        text: Call compare(), then enumerate the result of get_changes().
      - name: Accept or reject each change
        text: Set comparison_action to ACCEPT or REJECT on each ChangeInfo.
      - name: Apply changes
        text: Call apply_changes() with ApplyChangeOptions to produce the final file.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you programmatically accept or reject individual changes before producing the final result. This enables reviewer-style workflows: get the change list, decide per change, then apply the accepted ones.

## Steps to accept or reject changes

1. Compare two documents using `Comparer.compare()`.
2. Enumerate the changes via `comparer.get_changes()`.
3. For each `ChangeInfo`, set `comparison_action` to `ComparisonAction.ACCEPT` or `ComparisonAction.REJECT`.
4. Call `comparer.apply_changes()` with `ApplyChangeOptions(changes=...)` to produce the merged result.

## Example 1: Accept or reject changes (file paths)

{{< tabs "accept-reject-path">}}
{{< tab "accept_or_reject_changes.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import ApplyChangeOptions
from groupdocs.comparison.result import ComparisonAction

def accept_or_reject_changes():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare()
        changes = comparer.get_changes()

        # Reject the first change; accept everything else
        if changes:
            changes[0].comparison_action = ComparisonAction.REJECT

        comparer.apply_changes("./result.docx", ApplyChangeOptions(changes=changes))

if __name__ == "__main__":
    accept_or_reject_changes()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-detected-changes/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-detected-changes/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/accept-or-reject-detected-changes/accept_or_reject_changes/result.docx)
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

|                            Accepted changes                             |                             Rejected changes                            |
| :-----------------------------------------------------------------: | :----------------------------------------------------------------: |
| ![](/comparison/python-net/images/accepted-changes.png) | ![](/comparison/python-net/images/rejected-changes.png) |

## Example 2: Accept or reject changes (streams)

Same operation, but everything runs through streams — useful in services that don't persist intermediate files.

{{< tabs "accept-reject-stream">}}
{{< tab "accept_or_reject_changes_stream.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import ApplyChangeOptions
from groupdocs.comparison.result import ComparisonAction

def accept_or_reject_changes_stream():
    with open("./source.docx", "rb") as source_stream, \
         open("./target.docx", "rb") as target_stream:
        with Comparer(source_stream) as comparer:
            comparer.add(target_stream)
            comparer.compare()
            changes = comparer.get_changes()
            if changes:
                changes[0].comparison_action = ComparisonAction.REJECT
            with open("./result.docx", "wb") as out_stream:
                comparer.apply_changes(out_stream, ApplyChangeOptions(changes=changes))

if __name__ == "__main__":
    accept_or_reject_changes_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-detected-changes/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-detected-changes/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/accept-or-reject-detected-changes/accept_or_reject_changes_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Related topics

- [Accept or reject revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-revisions" >}}) — same accept/reject pattern, but applied to existing Word Track Changes revisions on a single document rather than to detected changes between two documents.
- [How to merge source code files]({{< ref "comparison/python-net/developer-guide/comparing-documents/how-to-merge-source-code-files" >}}) — applies the accept/reject pattern to source code merges.
- [Get list of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}}) — read the change collection without applying any decisions.
