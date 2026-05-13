---
id: accept-or-reject-revisions
url: comparison/python-net/developer-guide/comparing-documents/accept-or-reject-revisions
title: Accept or Reject Revisions
linkTitle: Accept or reject revisions
weight: 11
toc: true
description: "Extract Word track-change revisions from a DOCX file, decide which to accept or reject, and save the updated document using GroupDocs.Comparison for Python via .NET."
keywords: revisions, accept revisions, reject revisions, RevisionHandler, apply revisions, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
aliases:
    - /comparison/python-net/accept-or-reject-revisions/
structuredData:
  application:
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    name: Document Comparison
    productCode: comparison
    productPlatform: python-net
  howTo:
    description: Learn how to accept or reject revisions in Python step by step
    name: How to accept or reject revisions in Python
    steps:
      - name: Create a RevisionHandler
        text: Instantiate RevisionHandler with a Word document path or stream.
      - name: Get revisions
        text: Call get_revisions() to retrieve the list of RevisionInfo objects.
      - name: Accept or reject each revision
        text: For each revision, set action to RevisionAction.ACCEPT or RevisionAction.REJECT.
      - name: Apply revision changes
        text: Call apply_revision_changes() with ApplyRevisionOptions containing the decisions.
  showOrganization: true
  showVideo: true
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can extract Word track-change revisions from a DOCX file, let you accept or reject each one, and save the updated document.

To process revisions, follow these steps:

1. Instantiate a `RevisionHandler` and provide the source document path or stream.
2. Call `get_revisions()` to retrieve the list of revisions.
3. For each revision, set `action` to `RevisionAction.ACCEPT` or `RevisionAction.REJECT`.
4. Call `apply_revision_changes()` with the result file path and `ApplyRevisionOptions` containing the decisions.

## Example 1: Accept insertions and reject other revisions (file)

{{< tabs "accept-reject-revisions-path">}}
{{< tab "accept_or_reject_revisions.py" >}}
```python
from groupdocs.comparison.words.revision import RevisionHandler, RevisionAction, ApplyRevisionOptions

def accept_or_reject_revisions():
    with RevisionHandler("./Document_with_revision.docx") as revision_handler:
        revisions = revision_handler.get_revisions()
        for revision in revisions:
            if revision.type == "Insertion":
                revision.action = RevisionAction.ACCEPT
            else:
                revision.action = RevisionAction.REJECT

        options = ApplyRevisionOptions()
        options.changes = revisions
        revision_handler.apply_revision_changes("./result.docx", options)

if __name__ == "__main__":
    accept_or_reject_revisions()
```
{{< /tab >}}
{{< tab "Document_with_revision.docx" >}}
{{< tab-text >}}
`Document_with_revision.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-revisions/Document_with_revision.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 21 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/accept-or-reject-revisions/accept_or_reject_revisions/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 2: Process revisions from a stream

{{< tabs "accept-reject-revisions-stream">}}
{{< tab "accept_or_reject_revisions_stream.py" >}}
```python
from groupdocs.comparison.words.revision import RevisionHandler, RevisionAction, ApplyRevisionOptions

def accept_or_reject_revisions_stream():
    with open("./Document_with_revision.docx", "rb") as source_stream:
        with RevisionHandler(source_stream) as revision_handler:
            revisions = revision_handler.get_revisions()
            for revision in revisions:
                if revision.type == "Insertion":
                    revision.action = RevisionAction.ACCEPT

            options = ApplyRevisionOptions()
            options.changes = revisions
            revision_handler.apply_revision_changes("./result.docx", options)

if __name__ == "__main__":
    accept_or_reject_revisions_stream()
```
{{< /tab >}}
{{< tab "Document_with_revision.docx" >}}
{{< tab-text >}}
`Document_with_revision.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-revisions/Document_with_revision.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 21 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/accept-or-reject-revisions/accept_or_reject_revisions_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 3: Accept or reject all revisions at once

To apply a single decision to every revision in the document, set `common_handler` on `ApplyRevisionOptions`:

{{< tabs "accept-all-revisions">}}
{{< tab "accept_all_revisions.py" >}}
```python
from groupdocs.comparison.words.revision import RevisionHandler, RevisionAction, ApplyRevisionOptions

def accept_all_revisions():
    with RevisionHandler("./Document_with_revision.docx") as revision_handler:
        options = ApplyRevisionOptions()
        options.common_handler = RevisionAction.ACCEPT
        revision_handler.apply_revision_changes("./result.docx", options)

if __name__ == "__main__":
    accept_all_revisions()
```
{{< /tab >}}
{{< tab "Document_with_revision.docx" >}}
{{< tab-text >}}
`Document_with_revision.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/accept-or-reject-revisions/Document_with_revision.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 21 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/accept-or-reject-revisions/accept_all_revisions/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Result of revision processing

| Source file | Result file |
| --- | --- |
| ![](/comparison/python-net/images/revision-file.png) | ![](/comparison/python-net/images/result-revision-file.png) |

## Related topics

- [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) — accept/reject *between* two documents (this page is about revisions *inside* a single document).
- [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}}) — control whether comparison emits new revisions in the result.
- [Setting author of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/setting-author-of-changes" >}}) — attribute new revisions to a specific author.
