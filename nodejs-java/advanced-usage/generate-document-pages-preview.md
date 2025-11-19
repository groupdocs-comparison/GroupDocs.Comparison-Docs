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
---

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to generate page previews for source, target and output document(s) using the `generatePreview()` method of the `Document` class.

Use the `PreviewOptions` class to manage the preview generation process - specify desired page numbers, image format, etc.

The `getSource()` and `getTargets()` methods of the `Comparer` object allow you to access source and target documents and the `generatePreview()` method. When creating `PreviewOptions`, you need to specify:
*   delegate for each page stream creation (see the CreatePageStreamFunction event handler)
*   image preview format - `PNG / JPG / BMP`
*   page numbers to process
*   custom size of preview images (if needed)
{{< alert style="info" >}}Stream created by the `CreatePageStreamFunction` delegate is automatically disposed when the preview image is generated. If you need to implement the custom disposing of the image preview stream, specify the `ReleasePageStreamFunction` argument to clean up resources.{{< /alert >}}

The `PreviewOptions` class's main methods are as follows:

*   `getCreatePageStreamFunction()` returns a delegate that defines a method to create the output page preview stream
*   `getReleasePageStreamFunction()` returns a delegate that defines a method to remove the output page preview stream. This can be used when you need advanced control of resource handling
*   `setWidth` sets the preview image width. Use this method to customize the output image width
*   `setHeight` sets the preview image height. Use this method to customize output image height
*   `setPageNumbers` defines an array of page numbers to be previewed;
*   `setPreviewFormat` sets the preview image format which provides an ability to choose between image quality and size. Use the BMP format for the best image quality. Use the JPG format to produce the smallest image size (and faster loading image previews) but with lower quality than BMP. By default, GroupDocs.Comparison uses the PNG format to provide appropriate image quality and size.

The following code snippets show how to generate document previews in different scenarios.

## Get page previews for source document

The following example generates PNG previews for the first two pages of the source document.

```javascript
'use strict';

// Import GroupDocs.Comparison for Node.js via Java and Java interop classes
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');
const FileOutputStream = java.import('java.io.FileOutputStream');

// Open the source document as a Java input stream
const sourceFile = new InputStream('sample-files/source.docx');

// Initialize the Comparer using the source stream
const comparer = new groupdocs.Comparer(sourceFile);

// Define how each preview image stream should be created
const createPageStream = java.newProxy('com.groupdocs.comparison.common.function.CreatePageStreamFunction', {
  invoke: function (pageNumber) {
    // Create a separate PNG file for every generated page preview
    return new FileOutputStream('result_' + pageNumber + '.png');
  }
});

// Configure preview options: format and page numbers to render
const previewOptions = new groupdocs.PreviewOptions(createPageStream);
previewOptions.setPreviewFormat(groupdocs.PreviewFormats.PNG);
previewOptions.setPageNumbers(java.newArray('int', [1, 2]));

// Generate preview images for the source document
comparer.getSource().generatePreview(previewOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates how to generate page previews for the source document. It creates a `Comparer` instance with a source document stream, then creates a `CreatePageStreamFunction` proxy that creates a separate PNG file for each page preview. The `PreviewOptions` object is configured with PNG format and page numbers [1, 2], and `generatePreview()` is called on the source document accessed via `getSource()`. This generates preview images for the first two pages of the source document.

The result is as follows:

![](/comparison/nodejs-java/images/generate-document-pages-preview.png)

## Get page previews for the target document

The following example compares two documents and generates previews for the first target document.

```javascript
'use strict';

// Import GroupDocs.Comparison and Java NIO classes for writing output streams
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');
const Files = java.import('java.nio.file.Files');
const Paths = java.import('java.nio.file.Paths');

// Load source and target documents as input streams
const source = new InputStream('sample-files/source.docx');
const target = new InputStream('sample-files/target.docx');

// Create a Comparer instance for the source file
const comparer = new groupdocs.Comparer(source);

// Add the target document to the comparison set
comparer.add(target);

// Configure preview generation (create PNG stream per page)
const createPageStream = java.newProxy('com.groupdocs.comparison.common.function.CreatePageStreamFunction', {
  invoke: function (pageNumber) {
    return Files.newOutputStream(Paths.get('result_' + pageNumber + '.png'));
  }
});

const previewOptions = new groupdocs.PreviewOptions(createPageStream);
previewOptions.setPreviewFormat(groupdocs.PreviewFormats.PNG);
previewOptions.setPageNumbers(java.newArray('int', [1, 2]));

// Generate preview images for the first target document in the comparer
comparer.getTargets().get(0).generatePreview(previewOptions);

// Exit the process
process.exit(0);
```

This example compares two documents first, then generates previews for the target document. It creates a `Comparer` instance with source and target streams, performs the comparison, and then accesses the first target document using `getTargets().get(0)`. It creates a `PreviewOptions` object with a stream creation function that uses Java NIO's `Files.newOutputStream()` and `Paths.get()` to create output streams, then calls `generatePreview()` on the target document to generate preview images.

## Get page previews for the output document

The following example first produces a comparison result document and then generates previews from that output file.

```javascript
'use strict';

// Import GroupDocs.Comparison and Java NIO classes for file I/O
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');
const Files = java.import('java.nio.file.Files');
const Paths = java.import('java.nio.file.Paths');

// Define paths for input and output documents
const sourceFilePath = 'sample-files/source.docx';
const targetFilePath = 'sample-files/target.docx';
const outputFilePath = 'result.docx';

// Open source and target documents as streams
const sourceStream = new InputStream(sourceFilePath);
const targetStream = new InputStream(targetFilePath);

// Compare source and target, saving the merged result to disk
const comparer = new groupdocs.Comparer(sourceStream);
comparer.add(targetStream);
comparer.compare(outputFilePath);

// Open the generated output document as a GroupDocs Document instance
const document = new groupdocs.Document(outputFilePath);

// Configure preview generation for the result document
const createPageStream = java.newProxy('com.groupdocs.comparison.common.function.CreatePageStreamFunction', {
  invoke: function (pageNumber) {
    return Files.newOutputStream(Paths.get('result_' + pageNumber + '.png'));
  }
});

const previewOptions = new groupdocs.PreviewOptions(createPageStream);
previewOptions.setPreviewFormat(groupdocs.PreviewFormats.PNG);
const pageNumbersArray = java.newArray('int', [1, 2]);
previewOptions.setPageNumbers(pageNumbersArray);

// Generate preview images for the final comparison document
document.generatePreview(previewOptions);

// Exit the process
process.exit(0);
```

This example first performs a comparison and saves the result document, then generates previews from that output file. It creates a `Comparer`, performs the comparison, and saves the result. Then it creates a `Document` instance from the output file path and generates previews from that document. This approach allows you to generate previews of the final comparison result document, showing how the merged document with all changes highlighted appears.

## Set specific sizes for preview images

The following example sets a custom width and height for the generated preview images.

```javascript
'use strict';

// Import GroupDocs.Comparison and Java I/O for creating image files
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');
const FileOutputStream = java.import('java.io.FileOutputStream');

// Define paths for input and output documents
const sourcePath = 'sample-files/source.docx';
const targetPath = 'sample-files/target.docx';
const outputPath = 'result.docx';

// Open documents as streams and run comparison
const sourceStream = new InputStream(sourcePath);
const targetStream = new InputStream(targetPath);
const comparer = new groupdocs.Comparer(sourceStream);
comparer.add(targetStream);
comparer.compare(outputPath);

// Open the resulting document for preview generation
const document = new groupdocs.Document(outputPath);

// Configure how preview images will be written
const createPageStream = java.newProxy('com.groupdocs.comparison.common.function.CreatePageStreamFunction', {
  invoke: function (pageNumber) {
    return new FileOutputStream('result-' + pageNumber + '.png');
  }
});

// Create preview options with a custom size
const previewOptions = new groupdocs.PreviewOptions(createPageStream);
previewOptions.setPreviewFormat(groupdocs.PreviewFormats.PNG);
previewOptions.setPageNumbers(java.newArray('int', [1, 2]));
previewOptions.setHeight(1000); // target image height in pixels
previewOptions.setWidth(1000);  // target image width in pixels

// Generate resized preview images
document.generatePreview(previewOptions);

// Exit the process
process.exit(0);
```

This example demonstrates how to set custom dimensions for preview images. After performing the comparison and creating a `Document` instance from the result, it creates `PreviewOptions` and sets both `setHeight(1000)` and `setWidth(1000)` to generate preview images with specific pixel dimensions. This allows you to control the size of the generated preview images, which can be useful for creating thumbnails or ensuring consistent image sizes.

{{< alert style="info" >}}This feature is not supported for WordProcessing documents.{{< /alert >}}

## Get page previews and clean resources manually

The following example demonstrates how to plug in a custom release handler to manually dispose preview streams.

```javascript
'use strict';

// Import GroupDocs.Comparison and Java stream classes
const groupdocs = require('@groupdocs/groupdocs.comparison');

const java = require('java');
const InputStream = java.import('java.io.FileInputStream');
const FileOutputStream = java.import('java.io.FileOutputStream');

// Open source and target files as streams
const sourceFile = new InputStream('sample-files/source.docx');
const targetFile = new InputStream('sample-files/target.docx');

// Run comparison and obtain the path of the output document
const outputFile = 'result.docx';
const comparer = new groupdocs.Comparer(sourceFile);
comparer.add(targetFile);
const resultPath = comparer.compare(outputFile);

// Wrap the result document for preview generation
const document = new groupdocs.Document(resultPath);

// Create page stream factory for preview images
const createPageStream = java.newProxy('com.groupdocs.comparison.common.function.CreatePageStreamFunction', {
  invoke: function (pageNumber) {
    return new FileOutputStream('result-page-' + pageNumber + '.png');
  }
});

// Define custom cleanup logic for created streams
const releasePageStream = java.newProxy('com.groupdocs.comparison.common.function.ReleasePageStreamFunction', {
  invoke: function (pageNumber, outputStream) {
    console.log('Releasing memory for page: ', pageNumber);
    outputStream.close(); // close stream explicitly when GroupDocs is done with it
  }
});

// Use both factory and release handlers in preview options
const previewOptions = new groupdocs.PreviewOptions(createPageStream, releasePageStream);
previewOptions.setPreviewFormat(groupdocs.PreviewFormats.PNG);
previewOptions.setPageNumbers(java.newArray('int', [1, 2]));

// Generate page previews with custom resource management
document.generatePreview(previewOptions);

// Exit the process
process.exit(0);
```

This example demonstrates advanced resource management for preview generation. It creates both a `CreatePageStreamFunction` proxy to create output streams for each page preview and a `ReleasePageStreamFunction` proxy to manually clean up resources when preview generation is complete. The `ReleasePageStreamFunction` logs a message and explicitly closes the stream. Both functions are passed to the `PreviewOptions` constructor, giving you full control over stream lifecycle management, which is useful for memory-intensive operations or when you need custom cleanup logic.
