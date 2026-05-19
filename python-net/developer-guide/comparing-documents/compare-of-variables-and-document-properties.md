---
id: compare-of-variables-and-document-properties
url: comparison/python-net/developer-guide/comparing-documents/compare-of-variables-and-document-properties
title: Compare Variables and Document Properties
linkTitle: Compare variables & properties
weight: 21
description: "Compare Word document properties — variable, built-in, and custom — to detect metadata changes alongside content with GroupDocs.Comparison for Python via .NET."
keywords: variable properties, built-in properties, custom properties, compare document properties, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/compare-of-variables-and-document-properties/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to compare variables and document properties in Python
    description: Learn how to compare variables and document properties in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target
        text: Add the target via add().
      - name: Configure options
        text: Enable compare_variable_property and compare_document_property on CompareOptions.
      - name: Compare documents
        text: Call compare() with the options and a result path.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can detect changes in Word document properties — variable, built-in, and custom.

## Example: Compare variable and document properties

{{< tabs "compare-properties">}}
{{< tab "compare_variables_and_document_properties.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def compare_variables_and_document_properties():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.compare_variable_property = True
        options.compare_document_property = True
        comparer.compare("./result.docx", options)

if __name__ == "__main__":
    compare_variables_and_document_properties()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-of-variables-and-document-properties/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/compare-of-variables-and-document-properties/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "result.docx" >}}  
```text
Binary file (DOCX, 26 KB)
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/compare-of-variables-and-document-properties/compare_variables_and_document_properties/result.docx)
{{< /tab >}}
{{< /tabs >}}

Use case: ensure key metadata values remain consistent across document versions.

The result is as follows:

![](/comparison/python-net/images/properties-summary-page.png)

## Property types

Microsoft Word recognises three property surfaces:

| Property type | Examples | CompareOption |
|---|---|---|
| **Built-in properties** | Title, Author, Subject, Created, Last modified | `compare_document_property` |
| **Custom properties** | Any user-defined key/value pair (Department, Project code) | `compare_document_property` |
| **Document variables** | Mail-merge fields, automation variables set via VBA / templating tools | `compare_variable_property` |

`compare_document_property = True` covers built-in AND custom properties. `compare_variable_property = True` specifically targets the document-variables surface — this is most useful when comparing generated documents (mail-merge output, templating engines like Jinja-into-Word) where the variable values are the meaningful diff.

## Related topics

- [Compare Word documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-word-documents" >}}) — the base Word-comparison flow.
- [Compare bookmarks in Word documents]({{< ref "comparison/python-net/developer-guide/comparing-documents/compare-bookmarks-in-word" >}}) — another Word-only metadata-style compare.
- [Get extended information on the summary page]({{< ref "comparison/python-net/developer-guide/comparing-documents/get-extended-information-on-the-summary-page" >}}) — surface property diffs prominently in the summary.
