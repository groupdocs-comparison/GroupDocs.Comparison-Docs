---
id: load-file-from-local-disk
url: comparison/python-net/developer-guide/loading-documents/load-file-from-local-disk
title: Load File from Local Disk
linkTitle: Load from local disk
weight: 1
description: "Load source and target documents for comparison from the local file system, using absolute or relative paths with GroupDocs.Comparison for Python via .NET."
keywords: load document from local disk, load file from path, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/load-file-from-local-disk/
    - /comparison/python-net/advanced-usage/loading/load-file-from-local-disk/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to load a file from local disk in Python
    description: Learn how to load a file from a local disk in Python step by step
    steps:
      - name: Specify the source file path
        text: Use an absolute or relative path to the source file.
      - name: Create a Comparer
        text: Instantiate Comparer with the source file path.
      - name: Add the target file
        text: Call add() with the target file path.
      - name: Compare documents
        text: Call compare() with the result file path.
---

When source and target files are on the local disk, pass their paths directly to `Comparer` and `add()`. Both absolute and relative paths work.

## Example: Load files from local disk

{{< tabs "load-from-disk">}}
{{< tab "load_file_from_local_disk.py" >}}
```python
from groupdocs.comparison import Comparer

def load_file_from_local_disk():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        comparer.compare("./result.docx")
        print("Documents compared successfully. Check output in result.docx.")

if __name__ == "__main__":
    load_file_from_local_disk()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-file-from-local-disk/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-file-from-local-disk/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/loading-documents/load-file-from-local-disk/load_file_from_local_disk/result.docx)
{{< /tab >}}
{{< /tabs >}}
