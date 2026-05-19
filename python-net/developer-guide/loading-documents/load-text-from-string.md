---
id: load-text-from-string
url: comparison/python-net/developer-guide/loading-documents/load-text-from-string
title: Load Text from a String
linkTitle: Load text from string
weight: 5
description: "Compare text directly from Python string variables — without saving them to disk — by setting LoadOptions.load_text = True with GroupDocs.Comparison for Python via .NET."
keywords: load text from string, load_text, compare strings, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/load-text-from-string/
    - /comparison/python-net/advanced-usage/loading/load-text-from-string/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to load text from a string in Python
    description: Learn how to compare text from string variables in Python step by step
    steps:
      - name: Create LoadOptions with load_text enabled
        text: Instantiate LoadOptions and set load_text to True.
      - name: Create a Comparer with the source string
        text: Pass the source text as the first argument and the LoadOptions as the second.
      - name: Add the target string
        text: Call add() with the target string and the same LoadOptions.
      - name: Compare and read the result string
        text: Call compare() to write the result file, then get_result_string() to read the merged text.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can compare values from `str` variables directly — useful when the text never lives on disk (CLI input, REST request bodies, in-memory diffs).

Set [`LoadOptions.load_text`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/loadoptions/#properties) to `True` to tell `Comparer` that the first argument is a literal string, not a file path. Read the merged result back via `get_result_string()`.

## Example: Compare two strings

{{< tabs "load-from-string">}}
{{< tab "load_text_from_string.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import LoadOptions

def load_text_from_string():
    load_options = LoadOptions()
    load_options.load_text = True

    with Comparer("source text", load_options) as comparer:
        comparer.add("target text", load_options)
        comparer.compare("./result.docx")
        print("Result string:")
        print(comparer.get_result_string())

if __name__ == "__main__":
    load_text_from_string()
```
{{< /tab >}}
{{< tab "load-text-from-string-outputs.zip" >}}  
```text
result.docx (107 bytes)
result.html (479 bytes)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/loading-documents/load-text-from-string/load_text_from_string/load-text-from-string-outputs.zip)
{{< /tab >}}
{{< /tabs >}}
