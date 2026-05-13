---
id: setting-author-of-changes
url: comparison/python-net/developer-guide/comparing-documents/setting-author-of-changes
title: Setting the Author of Changes
linkTitle: Set author of changes
weight: 24
description: "Set a custom revision-author name on tracked changes in the Word comparison result via revision_author_name on CompareOptions in GroupDocs.Comparison for Python via .NET."
keywords: revision author, revision_author_name, author, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/setting-author-of-changes/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to set the author of changes in Python
    description: Step-by-step to set the revision author name in Python
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure options
        text: Set word_track_changes, show_revisions, and revision_author_name on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) lets you set a custom revision-author name on the changes recorded in the result document. Useful for audit trails and to attribute changes to a specific reviewer or automated system.

## Example: Set the revision author name

{{< tabs "set-author">}}
{{< tab "set_author_of_changes.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def set_author_of_changes():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.show_revisions = True
        options.word_track_changes = True
        options.revision_author_name = "New author"
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    set_author_of_changes()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/setting-author-of-changes/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/setting-author-of-changes/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 24 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/setting-author-of-changes/set_author_of_changes/result.docx)
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![Change author](/comparison/python-net/images/set-new-author-of-changes-example.png)

## Dependencies

`revision_author_name` only takes effect when revisions are actually being written into the result document. Both of the following must be true:

- `word_track_changes = True` — the comparison engine emits the diffs as Word Track Changes revisions.
- `show_revisions = True` — the revisions are displayed inline rather than hidden.

If either is `False`, `revision_author_name` is recorded in the underlying revision metadata but won't surface in the rendered output.

## When to use

- **Multi-reviewer pipelines.** Different automated processes can stamp their own author name so downstream reviewers see who (or what) generated each change.
- **Audit trails.** Compliance workflows that need to record an explicit "Comparison performed by" attribution on every diffed document.
- **Anonymising changes.** Strip personal names from automation output (e.g., set `revision_author_name = "Automated Diff"`).

## Related topics

- [Word track changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/word-track-changes" >}}) — the underlying revision-writing mechanism.
- [Show revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/show-revisions" >}}) — toggle revision visibility in the result.
- [Accept or reject revisions]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-revisions" >}}) — process the stamped revisions afterwards.
