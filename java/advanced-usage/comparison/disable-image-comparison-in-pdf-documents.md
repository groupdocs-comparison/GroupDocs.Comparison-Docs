---
id: disable-image-comparison-in-pdf-documents
url: comparison/java/disable-image-comparison-in-pdf-documents
title: Disable image comparison in PDF documents
weight: 20
description: "This article explains how to disable image comparison in PDF documents as a built in feature in GroupDocs.Comparison for Java."
keywords: comparison, image, pdf, PdfCompareOptions, CompareImagesPdf, ImagesInheritanceMode
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using Java language and GroupDocs.Comparison for Java
    productCode: comparison
    productPlatform: java
  showVideo: True
  howTo:
    name: How to disable image comparison in PDF documents
    description: Learn how to disable image comparison in PDF documents
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the add method
      - name: Specify necessary settings
        text: Create a PdfCompareOptions object and set CompareImagesPdf to false.
      - name: Compare documents
        text: Call the compare method of your object and put the resulting file path parameter and the options object.
---

---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) allows you to disable image comparison in PDF documents.

By default, the `CompareImagesPdf` option is `true`. Follow these steps to turn off image comparison:

1.  Instantiate the [Comparer](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/) object. Specify the source file path or stream.
2.  Call the [add()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method. Specify the target file path or stream.
3.  Instantiate the [PdfCompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/pdfcompareoptions/) object. Call `setCompareImagesPdf(false)`.
4.  Call `setImagesInheritanceMode()` with `ImagesInheritance.SOURCE` or `ImagesInheritance.TARGET` to choose which document the images in the result are taken from. The default is `SOURCE`.
5.  Call the [compare()](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison/comparer/#compare-java.lang.String-) method. Specify the `PdfCompareOptions` object from the previous steps.

The following code snippet shows how to disable image comparison in PDF documents:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.comparison.Comparer;
import com.groupdocs.comparison.options.PdfCompareOptions;
import com.groupdocs.comparison.options.enums.ImagesInheritance;
// ...

try (Comparer comparer = new Comparer("source.pdf")) {
    comparer.add("target.pdf");

    PdfCompareOptions compareOptions = new PdfCompareOptions();
    compareOptions.setCompareImagesPdf(false);
    compareOptions.setImagesInheritanceMode(ImagesInheritance.TARGET);

    comparer.compare("result.pdf", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/java/images/disable-image-comparison-in-pdf-documents.png)

{{< alert style="info" >}}
`CompareOptions.setCompareImagesPdf()` and `CompareOptions.setImagesInheritanceMode()` are still available for backward compatibility, but they are deprecated. Use `PdfCompareOptions` in new code.
{{< /alert >}}

## See also

- [Compare documents]({{< ref "comparison/java/comparison-basic/compare-documents.md" >}})
- [PdfCompareOptions API reference](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/pdfcompareoptions/)
