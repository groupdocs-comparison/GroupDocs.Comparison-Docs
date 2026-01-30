---
id: generate-document-pages-preview
url: comparison/net/generate-document-pages-preview
title: Generate document pages preview
weight: 6
description: "Following this guide you will learn how to generate PDF, Word, Excel, PowerPoint documents thumbnails and preview document pages using GroupDocs.Comparison for .NET API."
keywords: Document preview, Preview document pages, Document pages as PNG, document pages as JPG
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using C# language and GroupDocs.Comparison for .NET
    productCode: comparison
    productPlatform: net
  showVideo: True
  howTo:
    name: How to generate document pages preview  in .NET
    description: Learn how to generate document pages preview in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method.
      - name: Compare files
        text: Call the Compare method of your object without parameters.
      - name: Create an object of the settings
        text: Create an object of PreviewOptions class and initialise it the necessary parameters.
      - name: Generate preview for source or target document
        text: Call the GeneratePreview method of the necessary document of the Comparer object.
      - name: Generate preview for output document
        text: Create an object of Document class. The constructor takes the output file stream parameter. Call the GeneratePreview method with PreviewOptions parameter.
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to generate page previews for source, target and output document(s) using the [GeneratePreview](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) method of the [Document](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/document) class.

Use the [PreviewOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) class to manage the preview generation process - specify desired page numbers, image format, etc.

To generate the document preview using GroupDocs.Comparison API, follow these steps:

1.  Create an instance of the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) class. Specify the source document path as a constructor parameter.
2.  Add the target document to comparison using the [Add](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) method.
3.  The [Source](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/source) and [Targets](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/targets) properties of the [Comparer](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) object allows you to access source and target documents and provides the [GeneratePreview](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) method;
4.  Instantiate the [PreviewOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) object. Specify the following parameters:
    *   delegate for each page stream creation (see the CreatePageStream event handler)
    *   image preview format - PNG / JPG / BMP
    *   page numbers to process
    *   custom size of preview images (if needed)
    {{< alert style="info" >}}Stream created by the [CreatePageStream](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream) delegate is disposed automatically when preview image is generated. If you need to implement the custom disposing of the image preview stream, specify the [ReleasePageStream](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) argument to clean up resources.{{< /alert >}}
5.  Call the [GeneratePreview](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) method of the [Source](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/source) and [Targets](https://reference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/targets) documents. Specify the [PreviewOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions).

The [PreviewOptions](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) class main properties are as follows:

*   [CreatePageStream](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream) is a delegate which defines method to create output page preview stream
*   [ReleasePageStream](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) is a delegate which defines method to remove output page preview stream. This is can be used when need advanced control for resources handling
*   [Width](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/width) is preview image width. Use this property to customize output image width
*   [Height](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/height) is preview image height. Use this property to customize output image height
*   [Resolution](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/Resolution) allows to configure horizontal and vertical resolution values for image preview generation
*   [PageNumbers](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/pagenumbers) defines numbers of pages to be previewed;
*   [PreviewFormat](https://reference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/previewformat) gets or sets the preview image format which provides ability to choose between image quality and size. Use the BMP format for the best image quality. Use the JPG format to produce smallest image size (and faster loading image previews), but with lower quality than BMP. By default GroupDocs.Comparison uses the PNG format to provide appropriate image quality and size.

The following code snippet shows how to generate document previews:

## Get page previews for source document

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
        var pagePath = Path.Combine(@"D:\Temp\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Source.GeneratePreview(previewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is as follows:

![](/comparison/net/images/generate-document-pages-preview.png)

## Get page previews for target document

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
        var pagePath = Path.Combine(@"C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Targets[0].GeneratePreview(previewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Get page previews for output document

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
        var pagePath = Path.Combine(@"C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    document.GeneratePreview(previewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Set specific size and resolution for preview images

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

using (Comparer comparer = new Comparer("source.pptx"))
{
    comparer.Add("target.pptx");
    comparer.Compare("result.pptx");
    Document document = new Document(File.OpenRead("result.pptx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
        var pagePath = Path.Combine(@"C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    previewOptions.Height = 1000;
    previewOptions.Width = 1000;

    previewOptions.Resolution = new PreviewResolution()
    {
      HorizontalResolution = 300,
      VerticalResolution = 300
    };

    document.GeneratePreview(previewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}This feature is not supported for WordProcessing documents.{{< /alert >}}

## Get page previews and clean resources manually

{{< tabs "example5">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.IO;
// ...

// Method should match with ReleasePageStream delegate signature
private void UserReleaseStreamMethod(int pageNumber, Stream stream)
{
    Console.WriteLine($"Releasing memory for page: {pageNumber}");
    stream.Close();
}

using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
        var pagePath = Path.Combine(@"C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    // here we set delegate target method
    previewOptions.ReleasePageStream = UserReleaseStreamMethod;
    document.GeneratePreview(previewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
