---
id: compare-json-documents
url: comparison/python-net/developer-guide/comparing-documents/compare-json-documents
title: Compare JSON Documents
linkTitle: Compare JSON documents
weight: 6
description: "Compare JSON files and detect differences in nested objects, arrays, and data types using GroupDocs.Comparison for Python via .NET."
keywords: compare JSON, JSON difference detection, JSON comparison API, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-json-documents/
structuredData:
  application:
    description: Compare JSON files with high precision using Python and GroupDocs.Comparison for Python via .NET
    name: Compare JSON Documents
    productCode: comparison
    productPlatform: python-net
  howTo:
    description: Learn how to compare JSON documents in Python step by step
    name: How to compare JSON files in Python
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source JSON file.
      - name: Add the target JSON
        text: Add one or more JSON files via add().
      - name: Run comparison
        text: Call compare() and supply the result file path.
  showOrganization: true
  showVideo: true
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) compares JSON files and detects differences in nested objects, arrays, data types, and structures. This is useful for validating APIs, configurations, and large datasets where accuracy is critical.

The API can:

- Compare two or more **JSON documents**.
- Highlight differences in nested objects, arrays, and values.
- Produce a **visual** HTML report with highlighted differences, or a **textual** merged JSON file with inline diff markers.
- Accept or reject detected changes programmatically.

## Example 1: Compare JSON files

{{< tabs "compare-json-basic">}}
{{< tab "compare_json_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_json_documents():
    with Comparer("./source.json") as comparer:
        comparer.add("./target.json")
        comparer.compare("./result.json")

if __name__ == "__main__":
    compare_json_documents()
```
{{< /tab >}}
{{< tab "source.json" >}}
{{< tab-text >}}
`source.json` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-json-documents/source.json) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.json" >}}
{{< tab-text >}}
`target.json` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-json-documents/target.json) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "compare-json-documents-outputs.zip" >}}  
```text
result.html (635 bytes)
result.json (170 bytes)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-json-documents/compare_json_documents/compare-json-documents-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

The resulting `result.json` contains the combined JSON structure with differences highlighted inline.

## Example 2: Visual comparison (HTML report with summary)

Generate a single HTML report that highlights changes visually — deletions in red, insertions or modifications in blue. Add a summary page that lists every change.

{{< tabs "compare-json-html">}}
{{< tab "compare_json_to_html.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def compare_json_to_html():
    options = CompareOptions()
    options.generate_summary_page = True

    with Comparer("./source.json") as comparer:
        comparer.add("./target.json")
        comparer.compare("./result.html", options)

if __name__ == "__main__":
    compare_json_to_html()
```
{{< /tab >}}
{{< tab "source.json" >}}
{{< tab-text >}}
`source.json` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-json-documents/source.json) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.json" >}}
{{< tab-text >}}
`target.json` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-json-documents/target.json) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Example 3: Textual comparison with style detection

Produce a merged JSON file with inline diff markers; detect style and deletion changes.

{{< tabs "compare-json-textual">}}
{{< tab "compare_json_textual.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def compare_json_textual():
    options = CompareOptions()
    options.detect_style_changes = True
    options.show_deleted_content = True

    with Comparer("./source.json") as comparer:
        comparer.add("./target.json")
        comparer.compare("./result.json", options)

if __name__ == "__main__":
    compare_json_textual()
```
{{< /tab >}}
{{< tab "source.json" >}}
{{< tab-text >}}
`source.json` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-json-documents/source.json) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "compare-json-textual-outputs.zip" >}}  
```text
result.html (635 bytes)
result.json (170 bytes)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-json-documents/compare_json_textual/compare-json-textual-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

## When to use each output mode

| Result extension | Output | Best for |
|---|---|---|
| `.json` | Merged JSON with inline diff markers (`[deleted]`, `(inserted)`) | Programmatic diff post-processing |
| `.html` | Single HTML report with deletions in red and insertions in blue | Human review, embedded into a PR-review UI |
| `.md` / `.txt` | Plain-text diff representation | CI log output, ChatOps notifications |

`generate_summary_page = True` appends a high-level change-count summary to any output format. `detect_style_changes = True` ensures structural / type-level changes in JSON (e.g., a string becoming a number) are surfaced explicitly.

## Related topics

- [Accept or reject detected changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/accept-or-reject-detected-changes" >}}) — applies to JSON comparison results as well.
- [Get list of changes]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-list-of-changes" >}}) — read the raw change list to build a custom diff UI.
- [Adjusting comparison sensitivity]({{< ref "comparison/python-net/developer-guide/comparing-documents/adjusting-comparison-sensitivity" >}}) — tune how aggressively small JSON edits are reported.
