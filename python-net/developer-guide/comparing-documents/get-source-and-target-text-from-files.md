---
id: get-source-and-target-text-from-files
url: comparison/python-net/developer-guide/comparing-documents/get-source-and-target-text-from-files
title: Get Source and Target Text from Files
linkTitle: Get source & target text
weight: 19
description: "Read the source and target text for each detected change to power side-by-side diff review tools or downstream analytics using GroupDocs.Comparison for Python via .NET."
keywords: source text, target text, source_text, target_text, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-source-and-target-text-from-files/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to get source and target text in Python
    description: Learn how to get source and target text in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Compare and enumerate changes
        text: Call compare() and get_changes().
      - name: Read source/target text
        text: Read source_text and target_text on each change.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) records the source and target text for each detected change. Read `source_text` and `target_text` on each `ChangeInfo` to surface the before/after pair.

## Example 1: Get source and target text (file paths)

{{< tabs "source-target-text-path">}}
{{< tab "get_source_and_target_text.py" >}}
```python
from groupdocs.comparison import Comparer

def get_source_and_target_text():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx")
        for change in comparer.get_changes():
            print(f"Source text: {change.source_text}")
            print(f"Target text: {change.target_text}\n")

if __name__ == "__main__":
    get_source_and_target_text()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-source-and-target-text-from-files/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-source-and-target-text-from-files/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-source-and-target-text-from-files/get_source_and_target_text/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: extract changed text pairs to power side-by-side diff review tools.

## Example 2: Get source and target text (streams)

{{< tabs "source-target-text-stream">}}
{{< tab "get_source_and_target_text_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def get_source_and_target_text_stream():
    with open("./source.docx", "rb") as source_stream, \
         open("./target.docx", "rb") as target_stream:
        with Comparer(source_stream) as comparer:
            comparer.add(target_stream)
            comparer.compare("./result.docx")
            for change in comparer.get_changes():
                print(f"Source text: {change.source_text}")
                print(f"Target text: {change.target_text}\n")

if __name__ == "__main__":
    get_source_and_target_text_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-source-and-target-text-from-files/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-source-and-target-text-from-files/get_source_and_target_text_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: feed structured change text into analytics or translation workflows.
