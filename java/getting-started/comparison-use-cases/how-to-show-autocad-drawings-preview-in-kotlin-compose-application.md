---
id: how-to-show-autocad-drawings-preview-in-kotlin-compose-application
url: comparison/java/how-to-show-autocad-drawings-preview-in-kotlin-compose-application
title: How to show AutoCad Drawings preview in Kotlin Compose Multiplatform application
weight: 29
description: "The article describes how to show AutoCad Drawings preview in Kotlin Compose application using GroupDocs.Comparison"
keywords: comparison and contrast, AutoCad drawings, AutoCad preview, Kotlin Compose Multiplatform application
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Tool to generate previews for AutoCad
    description: The product allows to compare Java code
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to generate preview of AutoCad drawing and show it with Kotlin Compose Multiplatform UI framework
    description: You can easily generate and show preview images for AutoCad drawings
    steps:
      - name: Configuring Comparison library in a project
        text: To Configuring Comparison library you should setup repository and add maven dependency
      - name: Preparing project to display AutoCad drawings preview
        text: Create base layout of Compose application to display AutoCad drawings preview in it
      - name: Generating and displaying preview of AutoCad drawings
        text: Use GroupDocs.Comparison library to generate AutoCad drawings preview and display it using Kotlin Compose
---

Compose Multiplatform is a UI framework made by Jetbrains to simplify and accelerate desktop application development using Kotlin with a reactive and functional API. That is why this technology is increasing in popularity. Lots of companies start making software using Compose Multiplatform. As well, as for other goals, the framework can be easily used to create software that works with AutoCad drawings. In this situation [GroupDocs.Comparison](https://products.groupdocs.com/comparison) can be very useful to generate previews.

### How to generate preview of AutoCad drawing and show it with Kotlin Compose Multiplatform UI framework

To start working with Compose Multiplatform you need to install JetBrains Idea and create new project. To configure [GroupDocs.Comparison library](https://repository.groupdocs.com/comparison/) just follow steps below

#### Configuring Comparison library in a project

First of all, add GroupDocs repository to the project

<details open><summary>Add GroupDocs repository</summary><blockquote>

<script src="https://gist.github.com/groupdocs-comparison-gists/d75ac956735fabd2a53613e54e3b7039.js"></script>

</blockquote></details>

Next step is to add required library dependency

_The latest version of Comparison library can be [found here](https://repository.groupdocs.com/comparison/)_

<details open><summary>Add GroupDocs.Comparison dependency</summary><blockquote>

<script src="https://gist.github.com/groupdocs-comparison-gists/afcee955994941d17ce917654c98b25d.js"></script>

</blockquote></details>

#### Preparing project to display AutoCad drawings preview

To display preview we will need to create Composable function and custom resources loader that will allow to load preview image from temporary file. The file is used just to make the example simplest, streams are also available.

<script src="https://gist.github.com/groupdocs-comparison-gists/5bbdde8d898dde2fde20507baca6de86.js"></script>

In the code above we created base screen layout. There are just few rows columns and variables, you can read about them in Jetpack Compose documentation. One extra thing is resource loader. It just loads resource by its local path, nothing difficult.

Now, it is time to create file chooser dialog.

<script src="https://gist.github.com/groupdocs-comparison-gists/d4278b77570d3ebad8f9fc83676b6f94.js"></script>

In the code above we create button by clicking on which will be opened dialog to choose AutoCad drawings file that will be used for generating preview image.
The next code shows how easy you can generate preview image for AutoCad drawings or other files

<script src="https://gist.github.com/groupdocs-comparison-gists/a2c0a660e5d00e1ca54201d00e15ee81.js"></script>

#### Generating and displaying preview of AutoCad drawings

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) is modern and very powerful library for comparing different types of documents. The library can compare Word and Pdf documents, Excel and PowerPoint Presentations, Photos, Images, AutoCad drawings, Messages, Code files and much more [supported file formats](/comparison/java/supported-document-formats/). Except comparing functionality the library allows generating document pages previews, analyzing each change and accepting or rejecting them, getting coordinate of each change and so on.
In the code below you can see, how easy preview for AutoCad drawings can be generated. All you need is just create `Document` object passing drawing path or stream and then call `generatePreview` method with `PreviewOptions` as an argument. The callback with page number will be called for each page of the document. `PreviewOptions` has more options, for example, you can change preview format or specify just a few pages numbers so that the callback will be called only for specified pages.

The last thing we need to do is to display preview of AutoCad drawing using resource loader

<script src="https://gist.github.com/groupdocs-comparison-gists/36d972bf08dbeb494765418a4093d982.js"></script>

The preview of AutoCad drawing is displayed only when there is any image in `previewPage` object. The preview is configured to be scrollable vertically and to fill width horizontally.

Below you can see result application screen. It is made very simple to be easy understandable but the potential of the technology is very high.

|                   Preview of AutoCad drawing file in Kotlin Compose Multiplatform                   |
| :-------------------------------------------------------------------------------------------------: |
| ![](/comparison/java/images/how-to-show-autocad-drawings-preview-in-kotlin-compose-application.png) |

### Get a Free API License

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) library has much more facilities, for example, [generating summary page](/comparison/java/get-only-summary-page/), changing [sensitivity of comparison](/comparison/java/adjusting-comparison-sensitivity/) and so on. Lots of them are available only with license. You can get a [free temporary license](https://purchase.groupdocs.com/temporary-license) to use the API without any limitations.

### Free Online App

We provide not only full-featured Java/Kotlin library but also powerful free applications.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG, DWG, DXF and other documents with free to use online [GroupDocs Comparison Application](https://products.groupdocs.app/comparison).

### More details

To get more examples of using [GroupDocs.Comparison](https://products.groupdocs.com/comparison) with Java/Kotlin, check our [GitHub page](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). They are completely free to change and use in order to compare AutoCad drawings, photos, Excel, Word, code files, PowerPoint Presentations and much more [supported file formats](/comparison/java/supported-document-formats/).

To get more details, options, and examples, you can go through [the documentation](/comparison/java/getting-started/) and [GitHub](https://github.com/groupdocs-comparison) repository. Reach us [on the forum](https://forum.groupdocs.com/) for your queries.

### See also

- How to [compare documents](/comparison/java/how-to-compare-documents-in-the-easiest-way) in the easiest way
- How to [compare json files](/comparison/java/how-to-compare-files-in-java-or-kotlin) applying or rejecting changes with Java or Kotlin
- How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using compose desktop
- How to [see comparison and contrast](/comparison/java/how-to-see-comparison-and-contrast-of-essays) of essays
- How to [compare Text, Word or PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) in Java or Kotlin
