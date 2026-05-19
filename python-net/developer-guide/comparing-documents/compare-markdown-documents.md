---
id: compare-markdown-documents
url: comparison/python-net/developer-guide/comparing-documents/compare-markdown-documents
title: Compare Markdown Documents
linkTitle: Compare Markdown documents
weight: 5
description: "Compare Markdown (.md) files and detect differences in content, formatting, and structure using GroupDocs.Comparison for Python via .NET."
keywords: compare Markdown, compare .md files, document difference detection, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-markdown-documents/
structuredData:
  showOrganization: true
  application:
    name: Compare Markdown Documents
    description: Compare Markdown documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare Markdown documents in Python
    description: Learn how to compare Markdown documents in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source Markdown file.
      - name: Add target Markdown
        text: Add one or more Markdown files via add().
      - name: Run comparison
        text: Call compare() with the result file path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) compares Markdown documents and highlights differences in content, formatting, and structure. Useful for versioned documentation, README files, and technical writing where precise change detection is needed.

The API can:

- Compare two or more **Markdown (.md) files**.
- Highlight insertions, deletions, and modifications.
- Export results to a single Markdown file or another supported format.

## Example: Compare Markdown documents

{{< tabs "compare-markdown">}}
{{< tab "compare_markdown_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_markdown_documents():
    with Comparer("./source.md") as comparer:
        comparer.add("./target.md")
        comparer.compare("./result.md")

if __name__ == "__main__":
    compare_markdown_documents()
```
{{< /tab >}}
{{< tab "source.md" >}}
{{< tab-text >}}
`source.md` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-markdown-documents/source.md) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.md" >}}
{{< tab-text >}}
`target.md` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-markdown-documents/target.md) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Markdown-specific notes

- **Extensions.** GroupDocs.Comparison recognises `.md`, `.mkd`, `.mdwn`, `.mdown`, `.markdown`, `.markdn`, `.mdtxt`, and `.mdtext` as Markdown content. The output extension drives the result format — pass `result.md` for a merged Markdown file or `result.html` for a rendered HTML report.
- **Structure-aware comparison.** Heading levels, list nesting, and code-block boundaries are preserved in the merged result so the output stays renderable.
- **Front matter.** YAML / TOML front matter is treated as opaque text content. Changes inside the front matter block are reported the same way as body changes.

## Related topics

- [Compare documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}) — the base two-document flow used here.
- [Save comparison result in a different format]({{< ref "comparison/python-net/developer-guide/saving-results/save-comparison-result-in-different-format" >}}) — render the diff to HTML or PDF.
- [Get list of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}}) — process Markdown diffs programmatically.
