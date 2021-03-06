---
id: generate-document-pages-preview
url: comparison/java/generate-document-pages-preview
title: Generate document pages preview
weight: 4
description: "Following this guide you will learn how to generate PDF, Word, Excel, PowerPoint documents thumbnails and preview document pages using GroupDocs.Comparison for Java API."
keywords: Document preview, Preview document pages, Document pages as PNG, document pages as JPG
productName: GroupDocs.Comparison for Java
hideChildren: False
structuredData:
    showOrganization: True
    application:
        name: Documents Comparison Tool
        description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
        productCode: comparison
        productPlatform: java
    howTo:
        name: How to generate document pages preview
        description: Learn how to generate document pages preview
        steps:
        - name: Create 'Comparer' object
          text: Create object of 'Comparer' class passing source document as a constructor argument
        - name: Create 'CreatePageStream' object
          text: Create class that will extends 'CreatePageStream' class and instantiate it. Method 'public OutputStream invoke(int pageNumber)' will be called for providing output stream for each page of document so that preview images will be saved into those streams
        - name: Create 'PreviewOptions'
          text: Create an instance of 'PreviewOptions' class passing create page stream object as an argument 
        - name: Configure preview options
          text: Update image preview format with a help op 'setPreviewFormat(PreviewFormats.PNG)' method and page numbers with 'setPageNumbers(new int[]{1, 2})' method
        - name: Retrieve source document
          text: Use 'getSource()' method to retrieve source document object
        - name: Generate preview images
          text: Call 'generatePreview' method passing preview options as an argument
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)**??allows to generate page previews for source, target and resultant document(s) using??[generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))??method of a??[Document](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document) class.

[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) class is used to manage preview generation process - specify desired page numbers, image format etc.

The following are the steps??to generate document preview with GroupDocs.Comparison API:

*   Create new instance of??[Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)??class and pass source document path as a constructor parameter.    
*   Add target document(s) to comparison using??[add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) method.    
*   [Source](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource())??and??[Targets](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getTargets()) properties of??[Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer)??object allows to access source and target documents and provides??[generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))??method.??    
*   Instantiate the??[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions)??object with:    
    *   callback for??each page??stream creation (see event handler CreatePageStream);??        
    *   image preview format - PNG / JPG / BMP,??        
    *   page numbers to process;
    *   custom size of preview images (if needed).??         

{{< alert style="info" >}}
Stream that were created by [createPageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_CreatePageStream) callback will be disposed automatically once after generation of preview image. If you need to implement custom image preview stream disposing you have to pass additional argument??[ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_ReleasePageStream)??to clean up resources.
{{< /alert >}}

*   Call??[generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions))??method of??[Source](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource())??and??[Targets](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getTargets()) document and pass??[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions)??to it.??
    

Here a??[PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions)??class main properties:??
*   [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setCreatePageStream(com.groupdocs.comparison.common.delegates.Delegates.CreatePageStream))??- Callback??which defines method to create output page preview stream;    
*   [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setReleasePageStream(com.groupdocs.comparison.common.delegates.Delegates.ReleasePageStream))??-??Callback which defines method to remove output page preview stream. This is can be used when need advanced control for resources handling.    
*   [Width](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setWidth(int))??- Preview image width. This property used when need customize output image width;    
*   [Height](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setHeight(int))??- Preview image??height.??This property used when need customize output image height;    
*   PageNumbers??-??Page numbers that will be previewed;    
*   [PreviewFormat](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setPreviewFormat(int))??-??Gets or sets the preview image format which provides ability to choose between image quality and size.??**[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP)**??format should be used for the best image quality.??**[JPG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#JPEG)**??format will be useful in??case of strict requirements to image size??- it produces smallest image size (and faster loading image previews), but with lower quality than??**[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP)**. By default??**[PNG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#PNG)**??format is selected - which is a golden mean between image quality and size.
    

The following code snippet demonstrates how to??generate document previews.

## Get page previews for source document

<script src="https://gist.github.com/groupdocs-comparison-gists/74af4dca2cd81b3d14b5136fdd291f26.js"></script>

## Get page previews for target document

<script src="https://gist.github.com/groupdocs-comparison-gists/e34414e2945b837f57160900fa1e925b.js"></script>

## Get page previews for resultant document

<script src="https://gist.github.com/groupdocs-comparison-gists/5da1f1afc204abe5d0212d68f77e6701.js"></script>

## Set specific size for preview images

In some cases it may be useful to set specific image size during document pages preview generation. For example,??to generate document pages thumbnails - small images that??is a compressed preview image of the original image that is used as a placeholder.??The main advantage of such thumbnail images is their reduced file size compared to the original page image.

The following code snippet demonstrates how to??set specific size for preview images.

<script src="https://gist.github.com/groupdocs-comparison-gists/127ca350ae9fb6449f7fd2cdd1be32e0.js"></script>

{{< alert style="info" >}}NOTE: This feature is not supported for WordProcessing documents yet.{{< /alert >}}

## Get page previews with manual resource cleaning

By default, after generating and rendering document page??preview??image stream will be immediately disposed. However, there is an ability to implement custom method for handling this operation.

<script src="https://gist.github.com/groupdocs-comparison-gists/36201a68f984bd2840ccf577a823eb0f.js"></script>

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our??GitHub examples:

*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)    
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)    
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)    
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    

### Free Online App
Along with full-featured Java library we provide simple, but powerful free Apps.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX,??PDF, EML, EMLX, MSGand other documents with free to use online??**[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.