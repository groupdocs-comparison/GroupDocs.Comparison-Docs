---
id: get-list-of-changes
url: comparison/python-net/developer-guide/comparing-documents/get-list-of-changes
title: Get List of Changes
linkTitle: Get list of changes
weight: 14
description: "Retrieve the collection of detected changes after a comparison and iterate over them programmatically using GroupDocs.Comparison for Python via .NET."
keywords: list of changes, get_changes, ChangeInfo, compare documents, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-list-of-changes/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to get the list of changes in Python
    description: Learn how to get the list of changes in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Compare documents
        text: Call compare() to run the comparison.
      - name: Read changes
        text: Call get_changes() to iterate over the ChangeInfo collection.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) populates an internal change list during the comparison. After calling `compare()`, retrieve the changes via `get_changes()`.

## Example 1: Get the list of changes from file paths

{{< tabs "get-changes-path">}}
{{< tab "get_list_of_changes.py" >}}
```python
from groupdocs.comparison import Comparer

def get_list_of_changes():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare()
        for change in comparer.get_changes():
            print(f"Type: {change.type}, Page: {change.page_info.page_number}, Id: {change.id}, Text: {change.text}")

if __name__ == "__main__":
    get_list_of_changes()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-list-of-changes/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-list-of-changes/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-list-of-changes.txt" >}}  
```text
Type: 2, Page: 1, Id: 0, Text: Cool
Type: 2, Page: 1, Id: 1, Text:  
Type: 3, Page: 1, Id: 2, Text: test 
Type: 2, Page: 1, Id: 3, Text:  signatures
Type: 2, Page: 1, Id: 4, Text: Our 
Type: 2, Page: 1, Id: 5, Text: char[
Type: 2, Page: 1, Id: 6, Text: 255]
Type: 2, Page: 1, Id: 7, Text:  
Type: 3, Page: 1, Id: 8, Text:
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-list-of-changes/get_list_of_changes/get-list-of-changes.txt)
{{< /tab >}}
{{< /tabs >}}

Use case: build a custom report UI listing every difference with pagination info.

## Example 2: Get the list of changes from streams

{{< tabs "get-changes-stream">}}
{{< tab "get_list_of_changes_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def get_list_of_changes_stream():
    with open("./source.docx", "rb") as source_stream, \
         open("./target.docx", "rb") as target_stream:
        with Comparer(source_stream) as comparer:
            comparer.add(target_stream)
            comparer.compare()
            for change in comparer.get_changes():
                print(f"Type: {change.type}, Page: {change.page_info.page_number}, Id: {change.id}, Text: {change.text}")

if __name__ == "__main__":
    get_list_of_changes_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-list-of-changes/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-list-of-changes-stream.txt" >}}  
```text
Type: 2, Page: 1, Id: 0, Text: Cool
Type: 2, Page: 1, Id: 1, Text:  
Type: 3, Page: 1, Id: 2, Text: test 
Type: 2, Page: 1, Id: 3, Text:  signatures
Type: 2, Page: 1, Id: 4, Text: Our 
Type: 2, Page: 1, Id: 5, Text: char[
Type: 2, Page: 1, Id: 6, Text: 255]
Type: 2, Page: 1, Id: 7, Text:  
Type: 3, Page: 1, Id: 8, Text:
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-list-of-changes/get_list_of_changes_stream/get-list-of-changes-stream.txt)
{{< /tab >}}
{{< /tabs >}}

Use case: integrate diff extraction into services that operate on file streams.
