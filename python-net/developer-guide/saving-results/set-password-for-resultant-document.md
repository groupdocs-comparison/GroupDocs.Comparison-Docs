---
id: set-password-for-resultant-document
url: comparison/python-net/developer-guide/saving-results/set-password-for-resultant-document
title: Set a Password for the Resultant Document
linkTitle: Set output password
weight: 2
description: "Apply a password to the comparison result document so only authorised users can open it, using GroupDocs.Comparison for Python via .NET."
keywords: set output password, password protect result, PasswordSaveOption, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/set-password-for-output-document/
    - /comparison/python-net/set-password-for-resultant-document/
    - /comparison/python-net/advanced-usage/saving/set-password-for-resultant-document/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to set a password on save in Python
    description: Learn how to set the result document password on save in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with the source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure password save option
        text: Set password_save_option = PasswordSaveOption.USER on CompareOptions.
      - name: Set the password
        text: Set SaveOptions.password to the desired result-document password.
      - name: Compare with SaveOptions and CompareOptions
        text: Call compare() with both option objects.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can apply a password to the comparison result. Combine `CompareOptions.password_save_option = PasswordSaveOption.USER` with `SaveOptions.password = "<your password>"`.

## Example: Password-protect the result document

{{< tabs "set-output-password">}}
{{< tab "set_password_for_resultant_document.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions, SaveOptions, PasswordSaveOption

def set_password_for_resultant_document():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")

        compare_options = CompareOptions()
        compare_options.password_save_option = PasswordSaveOption.USER

        save_options = SaveOptions()
        save_options.password = "3333"

        comparer.compare("./result.docx", save_options, compare_options)

if __name__ == "__main__":
    set_password_for_resultant_document()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/set-password-for-resultant-document/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/saving-results/set-password-for-resultant-document/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 25 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/saving-results/set-password-for-resultant-document/set_password_for_resultant_document/result.docx)
{{< /tab >}}
{{< /tabs >}}

Opening `result.docx` will require the password `3333`.
