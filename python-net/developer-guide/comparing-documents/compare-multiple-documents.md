---
id: compare-multiple-documents
url: comparison/python-net/developer-guide/comparing-documents/compare-multiple-documents
title: Compare Multiple Documents
linkTitle: Compare multiple documents
weight: 4
description: "Compare a source document against multiple targets in a single pass — including password-protected files and custom compare settings — with GroupDocs.Comparison for Python via .NET."
keywords: compare multiple documents, multi-document comparison, compare more than two documents, password-protected multi-compare, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-multiple-documents/
    - /comparison/python-net/advanced-usage/comparison/compare-multiple-documents/
    - /comparison/python-net/compare-multiple-documents-protected-by-password/
    - /comparison/python-net/compare-multiple-documents-with-specific-compare-settings/
structuredData:
    showOrganization: true
    application:
        name: Document Comparison
        description: Compare multiple documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
        productCode: comparison
        productPlatform: python-net
    showVideo: true
    howTo:
        name: How to compare multiple documents in Python
        description: Learn how to compare multiple documents in Python step by step
        steps:
            - name: Create a Comparer with the source
              text: Instantiate Comparer with the source document path or stream.
            - name: Add the target documents
              text: Add each target via the add() method.
            - name: Compare documents
              text: Call compare() with the result file path.
---

{{< alert style="info" >}}
Multi-target comparison is supported for Microsoft Word documents, Microsoft PowerPoint presentations, and OpenDocument presentations.
{{< /alert >}}

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/python-net) can compare a source document against more than two targets in a single operation. Call `add()` for every target before calling `compare()`.

## Steps to compare multiple documents

1. Instantiate a [`Comparer`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparer) with the source document path or stream.
2. Call [`add()`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparer/#add) for each target document. Repeat for every target.
3. Call [`compare()`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison/comparer/#compare) and specify the result file path or output stream.

## Example 1: Compare several documents from file paths

{{< tabs "compare-multiple-path">}}
{{< tab "compare_multiple_documents.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_multiple_documents():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target1.docx")
        comparer.add("./target2.docx")
        comparer.add("./target3.docx")
        comparer.compare("./result.docx")
        print("Documents compared successfully. Result saved to result.docx.")

if __name__ == "__main__":
    compare_multiple_documents()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target1.docx" >}}
{{< tab-text >}}
`target1.docx` is a target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target1.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target2.docx" >}}
{{< tab-text >}}
`target2.docx` is a target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target2.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target3.docx" >}}
{{< tab-text >}}
`target3.docx` is a target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target3.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-multiple-documents/compare_multiple_documents/result.docx)
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/python-net/images/compare-multiple-word.png)

## Example 2: Compare several documents from streams

For workflows that don't use the local file system, use streams for both inputs and the result:

{{< tabs "compare-multiple-stream">}}
{{< tab "compare_multiple_documents_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def compare_multiple_documents_stream():
    with open("./source.docx", "rb") as src, \
         open("./target1.docx", "rb") as t1, \
         open("./target2.docx", "rb") as t2, \
         open("./target3.docx", "rb") as t3:
        with Comparer(src) as comparer:
            comparer.add(t1)
            comparer.add(t2)
            comparer.add(t3)
            with open("./result.docx", "wb") as out_stream:
                comparer.compare(out_stream)

if __name__ == "__main__":
    compare_multiple_documents_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target1.docx" >}}
{{< tab-text >}}
`target1.docx` is a target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target1.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-multiple-documents/compare_multiple_documents_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 3: Compare multiple documents with specific compare settings

Pass a [`CompareOptions`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/compareoptions) instance to customize how the comparison is rendered — for example, to highlight inserted items in a specific colour.

{{< tabs "compare-multiple-settings">}}
{{< tab "compare_multiple_documents_settings.py" >}}
```python
from groupdocs.comparison import Comparer, Color
from groupdocs.comparison.options import CompareOptions, StyleSettings


def compare_multiple_documents_settings():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target1.docx")
        comparer.add("./target2.docx")
        comparer.add("./target3.docx")

        options = CompareOptions()
        options.inserted_item_style = StyleSettings()
        options.inserted_item_style.font_color = Color.from_name("yellow")

        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    compare_multiple_documents_settings()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target1.docx" >}}
{{< tab-text >}}
`target1.docx` is a target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target1.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-multiple-documents/compare_multiple_documents_settings/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Example 4: Compare multiple password-protected documents

When the source or target documents are password-protected, supply the password through a [`LoadOptions`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/loadoptions) object when constructing the `Comparer` and when calling `add()`.

{{< tabs "compare-multiple-protected">}}
{{< tab "compare_multiple_documents_protected.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import LoadOptions

def compare_multiple_documents_protected():
    source_load = LoadOptions()
    source_load.password = "1234"

    with Comparer("./source_protected.docx", source_load) as comparer:
        for target, password in (
            ("./target_protected.docx", "5678"),
            ("./target2_protected.docx", "5678"),
            ("./target3_protected.docx", "5678"),
        ):
            load_opts = LoadOptions()
            load_opts.password = password
            comparer.add(target, load_opts)

        comparer.compare("./result.docx")

if __name__ == "__main__":
    compare_multiple_documents_protected()
```
{{< /tab >}}
{{< tab "source_protected.docx" >}}
{{< tab-text >}}
`source_protected.docx` is a password-protected source file. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/source_protected.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target_protected.docx" >}}
{{< tab-text >}}
`target_protected.docx` is a password-protected target file. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target_protected.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target2_protected.docx" >}}
{{< tab-text >}}
`target2_protected.docx` is a password-protected target file. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target2_protected.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target3_protected.docx" >}}
{{< tab-text >}}
`target3_protected.docx` is a password-protected target file. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-multiple-documents/target3_protected.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-multiple-documents/compare_multiple_documents_protected/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Related topics

- [Compare documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-documents" >}}) — single-target comparison.
- [Customize changes styles]({{< ref "comparison/python-net/developer-guide/comparing-documents/customize-changes-styles" >}}) — full control over how changes are rendered.
- [Load password-protected documents]({{< ref "comparison/python-net/developer-guide/loading-documents/load-password-protected-documents" >}}) — single-document password handling.
