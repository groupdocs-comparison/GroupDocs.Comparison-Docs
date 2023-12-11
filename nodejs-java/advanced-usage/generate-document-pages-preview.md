---
id: generate-document-pages-preview
url: comparison/nodejs-java/generate-document-pages-preview
title: Generate document pages preview
weight: 6
description: "Following this guide you will learn how to generate PDF, Word, Excel, PowerPoint documents thumbnails and preview document pages using GroupDocs.Comparison for Node.js via Java API."
keywords: Document preview, Preview document pages, Document pages as PNG, document pages as JPG
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: How to generate document pages preview  in Java
    description: Learn how to generate document pages preview in Java step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the target file using the Add method.
      - name: Compare files
        text: Call the Compare method of your object without parameters.
      - name: Create an object of the settings
        text: Create an object of PreviewOptions class and initialise it the necessary parameters.
      - name: Generate preview for source or target document
        text: Call the GeneratePreview method of the necessary document of the Comparer object.
      - name: Generate preview for output document
        text: Create an object of Document class. The constructor takes the output file stream parameter. Call the GeneratePreview method with PreviewOptions parameter.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to generate page previews for source, target and output document(s) using the [generatePreview()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/document/#generatePreview-com.groupdocs.comparison.options.PreviewOptions-) method of the [Document](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/document) class.

Use the [PreviewOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/) class to manage the preview generation process - specify desired page numbers, image format, etc.

To generate the document preview using GroupDocs.Comparison API, follow these steps:

1.  Create an instance of the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) class. Specify the source document path as a constructor parameter.
2.  Add the target document to comparison using the [add()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-) method.
3.  The [getSource()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getSource--) and [getTargets()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getTargets--) methods of the [Comparer](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer) object allows you to access source and target documents and the [generatePreview()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/document/#generatePreview-com.groupdocs.comparison.options.PreviewOptions-) method.
4.  Instantiate the [PreviewOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions) object. Specify the following parameters:
    *   delegate for each page stream creation (see the reatePageStreamFunction event handler)
    *   image preview format - [PNG / JPG / BMP](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.enums/previewformats/)
    *   page numbers to process
    *   custom size of preview images (if needed)
    {{< alert style="info" >}}Stream created by the [CreatePageStreamFunction](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.common.function/createpagestreamfunction/) delegate is disposed automatically when preview image is generated. If you need to implement the custom disposing of the image preview stream, specify the [ReleasePageStreamFunction](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.common.function/releasepagestreamfunction/) argument to clean up resources.{{< /alert >}}
5.  Call the [generatePreview()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/document/#generatePreview-com.groupdocs.comparison.options.PreviewOptions-) method of the [Source](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getSource--) and [Targets](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#getTargets--) documents. Specify the [PreviewOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/).

The [PreviewOptions](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/) class main methods are as follows:

*   [getCreatePageStreamFunction()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/#getCreatePageStream--) returns a delegate which defines method to create output page preview stream
*   [getReleasePageStreamFunction()](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/#getReleasePageStream--) returns a delegate which defines method to remove output page preview stream. This is can be used when need advanced control for resources handling
*   [setWidth](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/#setWidth-int-) sets the preview image width. Use this method to customize output image width
*   [setHeight](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/#setHeight-int-) sets the preview image height. Use this method to customize output image height
*   [setPageNumbers](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/#setPageNumbers-int---) defines an array of page numbers to be previewed;
*   [setPreviewFormat](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options/previewoptions/#setPreviewFormat-com.groupdocs.comparison.options.enums.PreviewFormats-) sets the preview image format which provides ability to choose between image quality and size. Use the BMP format for the best image quality. Use the JPG format to produce smallest image size (and faster loading image previews), but with lower quality than BMP. By default GroupDocs.Comparison uses the PNG format to provide appropriate image quality and size.

The following code snippet shows how to generate document previews:

## Get page previews for source document

{{< tabs "example1">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
const previewOptions = new groupdocs.comparison.PreviewOptions(
  pageNumber => Files.newOutputStream(previewDirectory + "result_" + pageNumber + ".png")
);
previewOptions.setPreviewFormat(groupdocs.comparison.PreviewFormats.PNG);
previewOptions.setPageNumbers(new int[]{1, 2});
comparer.getSource().generatePreview(previewOptions);
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/nodejs-java/images/generate-document-pages-preview.png)

## Get page previews for target document

{{< tabs "example2">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const previewOptions = new groupdocs.comparison.PreviewOptions(
  pageNumber => Files.newOutputStream(previewDirectory + "result_" + pageNumber + ".png")
);
previewOptions.setPreviewFormat(groupdocs.comparison.PreviewFormats.PNG);
previewOptions.setPageNumbers(new int[]{1, 2});
comparer.getTargets().get(0).generatePreview(previewOptions);
```
{{< /tab >}}
{{< /tabs >}}

## Get page previews for output document

{{< tabs "example3">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const resultPath = comparer.compare(outputFile);
const document = new groupdocs.comparison.Document(resultPath);
const previewOptions = new groupdocs.comparison.PreviewOptions(
  pageNumber => Files.newOutputStream(previewDirectory + "result_" + pageNumber + ".png")
);
previewOptions.setPreviewFormat(groupdocs.comparison.PreviewFormats.PNG);
previewOptions.setPageNumbers(new int[]{1, 2});
document.generatePreview(previewOptions);
```
{{< /tab >}}
{{< /tabs >}}

## Set specific size for preview images

{{< tabs "example4">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const resultPath = comparer.compare(outputFile);
const document = new groupdocs.comparison.Document(resultPath);

const previewOptions = new groupdocs.comparison.PreviewOptions(
  pageNumber => Files.newOutputStream(previewDirectory + "result-SetSpecificImagesSize_" + pageNumber + ".png")
);
previewOptions.setPreviewFormat(groupdocs.comparison.PreviewFormats.PNG);
previewOptions.setPageNumbers(new int[]{1, 2});
previewOptions.setHeight(1000);
previewOptions.setWidth(1000);
document.generatePreview(previewOptions);
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}This feature is not supported for WordProcessing documents.{{< /alert >}}

## Get page previews and clean resources manually

{{< tabs "example5">}}
{{< tab "Javascript" >}}
```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const resultPath = comparer.compare(outputFile);
const document = new groupdocs.comparison.Document(resultPath);

const previewOptions = new groupdocs.comparison.PreviewOptions(
  pageNumber => Files.newOutputStream(previewDirectory + "result-GetPagePreviewsResouresCleaning_" + pageNumber + ".png")
);
previewOptions.setPreviewFormat(groupdocs.comparison.PreviewFormats.PNG);
previewOptions.setPageNumbers(new int[]{1, 2});
previewOptions.setReleasePageStreamFunction(new groupdocs.comparison.ReleasePageStreamFunction() {
    @Override
    public void invoke(int pageNumber, OutputStream outputStream) {
        System.out.println("Releasing memory for page: " + pageNumber);
        outputStream.close();
    }
});
document.generatePreview(previewOptions);
```
{{< /tab >}}
{{< /tabs >}}
