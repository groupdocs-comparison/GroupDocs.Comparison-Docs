---
id: load-password-protected-documents
url: comparison/python-net/developer-guide/loading-documents/load-password-protected-documents
title: Load Password-Protected Documents
linkTitle: Load password-protected
weight: 3
description: "Compare password-protected PDF, Word, Excel, and PowerPoint documents by supplying passwords through LoadOptions using GroupDocs.Comparison for Python via .NET."
keywords: load password-protected document, LoadOptions password, encrypted document, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/load-password-protected-documents/
    - /comparison/python-net/advanced-usage/loading/load-password-protected-documents/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to load password-protected documents in Python
    description: Learn how to load password-protected documents in Python step by step
    steps:
      - name: Create LoadOptions with the password
        text: Instantiate LoadOptions and set the password property.
      - name: Create a Comparer with the source and LoadOptions
        text: Pass the source path/stream and LoadOptions to Comparer.
      - name: Add target with its LoadOptions
        text: Create a separate LoadOptions for the target's password and pass it via add().
      - name: Compare documents
        text: Call compare() with the result file path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can compare password-protected documents. Supply the source password through a [`LoadOptions`](https://reference.groupdocs.com/comparison/python-net/groupdocs.comparison.options/loadoptions) instance when constructing the `Comparer`, and the target password through a separate `LoadOptions` when calling `add()`.

## Example: Compare a password-protected source and target

{{< tabs "load-password-protected">}}
{{< tab "load_password_protected_documents.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import LoadOptions

def load_password_protected_documents():
    source_load = LoadOptions()
    source_load.password = "1234"

    target_load = LoadOptions()
    target_load.password = "5678"

    with Comparer("./source_protected.docx", source_load) as comparer:
        comparer.add("./target_protected.docx", target_load)
        comparer.compare("./result.docx")

if __name__ == "__main__":
    load_password_protected_documents()
```
{{< /tab >}}
{{< tab "source_protected.docx" >}}
{{< tab-text >}}
`source_protected.docx` is a password-protected source file. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-password-protected-documents/source_protected.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target_protected.docx" >}}
{{< tab-text >}}
`target_protected.docx` is a password-protected target file. Click [here](/comparison/python-net/_sample_files/developer-guide/loading-documents/load-password-protected-documents/target_protected.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 24 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/loading-documents/load-password-protected-documents/load_password_protected_documents/result.docx)
{{< /tab >}}
{{< /tabs >}}

## Related topics

- [Compare multiple password-protected documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-multiple-documents" >}}) — extend the same pattern to several targets.
