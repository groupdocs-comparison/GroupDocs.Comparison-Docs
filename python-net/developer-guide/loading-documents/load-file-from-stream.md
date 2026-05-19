---
id: load-file-from-stream
url: comparison/python-net/developer-guide/loading-documents/load-file-from-stream
title: Load File from Stream
linkTitle: Load from stream
weight: 2
description: "Load source and target documents from open file streams to avoid persisting intermediate files, using GroupDocs.Comparison for Python via .NET."
keywords: load document from stream, file stream, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/load-file-from-stream/
    - /comparison/python-net/advanced-usage/loading/load-file-from-stream/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to load a file from a stream in Python
    description: Learn how to load a file from a stream in Python step by step
    steps:
      - name: Open source as a binary stream
        text: Open the source file with 'rb' mode.
      - name: Create a Comparer with the source stream
        text: Pass the open stream to the Comparer constructor.
      - name: Add the target stream
        text: Open the target as 'rb' and pass it to add().
      - name: Compare documents
        text: Call compare() with the result path.
---

To avoid persisting intermediate files, work with file streams directly. Pass an open binary stream to `Comparer` and `add()`.

1. Open the source and target files as binary streams.
2. Pass the source stream to the `Comparer` constructor.
3. Pass the target stream to `add()`.
4. Call `compare()` with the result path or output stream.

## Example: Load files from streams

{{< tabs "load-from-stream">}}
{{< tab "load_file_from_stream.py" >}}
```python
from groupdocs.comparison import Comparer

def load_file_from_stream():
    with open("./source.docx", "rb") as source_stream, \
         open("./target.docx", "rb") as target_stream:
        with Comparer(source_stream) as comparer:
            comparer.add(target_stream)
            comparer.compare("./result.docx")
            print("Documents compared successfully. Check output in result.docx.")

if __name__ == "__main__":
    load_file_from_stream()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-file-from-stream/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-file-from-stream/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/loading-documents/load-file-from-stream/load_file_from_stream/result.docx)
{{< /tab >}}
{{< /tabs >}}
