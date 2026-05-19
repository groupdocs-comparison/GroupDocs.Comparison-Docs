---
id: get-result-document-object
url: comparison/python-net/developer-guide/comparing-documents/get-result-document-object
title: Get Comparison Result as a Document Object
linkTitle: Result document object
weight: 18
toc: true
description: "Retrieve the comparison result as a Document object — including file name, detected changes, and stream — using GroupDocs.Comparison for Python via .NET."
hideChildren: false
keywords: comparison result, Document object, result object model, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
aliases:
    - /comparison/python-net/get-result-document-object/
structuredData:
  application:
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    name: Document Comparison
    productCode: comparison
    productPlatform: python-net
  howTo:
    description: Learn how to get the comparison result document object in Python step by step
    name: How to get the comparison result document object in Python
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source path or stream.
      - name: Add the target
        text: Add the target via add().
      - name: Compare and capture the result
        text: Call compare() and assign its return value to a Document object.
  showOrganization: true
  showVideo: true
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) returns a `Document` object from `Comparer.compare()` that exposes the result file name, detected changes, and the result stream. The object model is compatible with Aspose libraries, so you can pass it into downstream processing pipelines.

## Example: Obtain the result Document object

{{< tabs "result-document">}}
{{< tab "get_result_document_object.py" >}}
```python
from groupdocs.comparison import Comparer

def get_result_document_object():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        result_document = comparer.compare("./result.docx")
        for change in result_document.changes:
            print(f"Source text: {change.source_text}")
            print(f"Target text: {change.target_text}\n")

if __name__ == "__main__":
    get_result_document_object()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-result-document-object/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-result-document-object/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-result-document-object/get_result_document_object/result.docx)
{{< /tab >}}
{{< /tabs >}}

The result will list source and target text segments for each detected change.
