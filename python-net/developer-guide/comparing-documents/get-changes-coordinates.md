---
id: get-changes-coordinates
url: comparison/python-net/developer-guide/comparing-documents/get-changes-coordinates
title: Get Changes Coordinates
linkTitle: Get changes coordinates
weight: 15
description: "Compute pixel coordinates for each detected change to overlay highlights on page previews, using GroupDocs.Comparison for Python via .NET."
keywords: changes coordinates, calculate_coordinates, preview overlay, highlight changes, GroupDocs.Comparison Python
productName: GroupDocs.Comparison for Python via .NET
hideChildren: false
toc: true
aliases:
    - /comparison/python-net/get-changes-coordinates/
structuredData:
  showOrganization: true
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Python and GroupDocs.Comparison for Python via .NET
    productCode: comparison
    productPlatform: python-net
  showVideo: true
  howTo:
    name: How to get changes coordinates in Python
    description: Learn how to get changes coordinates in Python step by step
    steps:
      - name: Create a Comparer
        text: Instantiate Comparer with a source path or stream.
      - name: Add target file
        text: Add the target via add().
      - name: Configure options
        text: Set calculate_coordinates = True on CompareOptions.
      - name: Compare and read coordinates
        text: Call compare(), then get_changes() and read the Box on each change.
---

[GroupDocs.Comparison for Python via .NET](https://products.groupdocs.com/comparison/python-net) can compute pixel coordinates for each detected change, letting you overlay highlights on preview images of the source and target documents.

## Example: Get coordinates for detected changes

Enable coordinate calculation, run the comparison, and inspect the `box` on each change:

{{< tabs "get-changes-coordinates">}}
{{< tab "get_changes_coordinates.py" >}}
```python
from groupdocs.comparison import Comparer
from groupdocs.comparison.options import CompareOptions

def get_changes_coordinates():
    with Comparer("./source.docx") as comparer:
        comparer.add("./target.docx")
        options = CompareOptions()
        options.calculate_coordinates = True
        comparer.compare(options)
        for change in comparer.get_changes():
            print(f"Type: {change.type}, X: {change.box.x}, Y: {change.box.y}, Text: {change.text}")

if __name__ == "__main__":
    get_changes_coordinates()
```
{{< /tab >}}
{{< tab "source.docx" >}}
{{< tab-text >}}
`source.docx` is the source file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-changes-coordinates/source.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "target.docx" >}}
{{< tab-text >}}
`target.docx` is the target file used in this example. Click [here](/comparison/python-net/_sample_files/developer-guide/comparing-documents/get-changes-coordinates/target.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-changes-coordinates.txt" >}}  
```text
Type: 2, X: 488.96243, Y: 223.86372, Text: Cool
Type: 2, X: 560.054, Y: 223.86372, Text:  
Type: 3, X: 389.23828, Y: 285.49686, Text: test 
Type: 2, X: 206.4055, Y: 375.95325, Text:  signatures
Type: 2, X: 119.997, Y: 595.8851, Text: Our 
Type: 2, X: 435.85577, Y: 657.51825, Text: char[
Type: 2, X: 435.85577, Y: 657.51825, Text: 255]
Type: 2, X: 498.0422, Y: 657.51825, Text:  
Type: 3, X: 119.997, Y: 922.6783, Text:
```
[Download full output](/comparison/python-net/_output_files/developer-guide/comparing-documents/get-changes-coordinates/get_changes_coordinates/get-changes-coordinates.txt)
{{< /tab >}}
{{< /tabs >}}

Use case: draw bounding boxes over page previews to visualise change locations.
