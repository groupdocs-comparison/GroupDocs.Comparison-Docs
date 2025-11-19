---
id: set-document-metadata-on-save
url: comparison/nodejs-java/set-document-metadata-on-save
title: Set document metadata on save
weight: 1
description: "Follow this guide and learn how to set document metadata when saving output document after files comparison within your Java applications."
keywords: Save document metadata,  Compare documents, Document comparison, File diff
productName: GroupDocs.Comparison for Node.js via Java
hideChildren: False
toc: True
---

A document can contain some metadata information, such as author, organization, etc. [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to select metadata sources when saving the output document.  

Possible metadata sources are as follows:

- Source document metadata
- Target document metadata
- User-defined metadata

The following code snippets show how to set output document metadata.

## Set metadata from the source file

The following example copies metadata (author, company, etc.) from the source document into the comparison result.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and output documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const outputFile = 'result.docx';

// Create a Comparer instance for the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to compare against the source
comparer.add(targetFile);

// Configure save options (clone metadata from the source document)
const saveOptions = new groupdocs.SaveOptions();
saveOptions.setCloneMetadataType(groupdocs.MetadataType.SOURCE); // Use source metadata for the result

// Execute the comparison and save the result to the output file
comparer.compare(outputFile, saveOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example creates a `Comparer` instance with the source document, adds the target document, and creates a `SaveOptions` object. It configures the metadata source by calling `setCloneMetadataType(MetadataType.SOURCE)`, which copies all metadata (author, company, creation date, etc.) from the source document into the result document. When the comparison is performed, the result file will contain the same metadata as the source document.

## Set metadata from the target file

The following example instead copies metadata from the target document into the result.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for the source, target, and output documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const outputFile = 'result.docx';

// Create a Comparer instance for the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to the comparison list
comparer.add(targetFile);

// Configure save options for the comparison result
const saveOptions = new groupdocs.SaveOptions();

// Clone metadata from the target document into the result
saveOptions.setCloneMetadataType(groupdocs.MetadataType.TARGET);

// Perform the comparison and save the result to the output file
comparer.compare(outputFile, saveOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example follows the same pattern but uses `setCloneMetadataType(MetadataType.TARGET)` instead. This copies all metadata from the target document into the result document, so the result file will have the same metadata properties as the target document rather than the source.

## Set user-defined metadata 

The following example uses a custom `FileAuthorMetadata` object to write explicit author information into the output document.

```javascript
'use strict';

// Import the GroupDocs.Comparison for Node.js via Java SDK
const groupdocs = require('@groupdocs/groupdocs.comparison');

// Define file paths for source, target, and output documents
const sourceFile = 'sample-files/source.docx';
const targetFile = 'sample-files/target.docx';
const outputFile = 'result.docx';

// Create a comparer instance for the source document
const comparer = new groupdocs.Comparer(sourceFile);

// Add the target document to be compared with the source
comparer.add(targetFile);

// Initialize metadata that will be written to the result file
const fileAuthorMetadata = new groupdocs.FileAuthorMetadata();

// Set the author information for the output document
fileAuthorMetadata.setAuthor('Tom');
fileAuthorMetadata.setCompany('GroupDocs');
fileAuthorMetadata.setLastSaveBy('Jack');

// Configure save options for the comparison result
const saveOptions = new groupdocs.SaveOptions();

// Attach the previously defined author metadata to the save options
saveOptions.setFileAuthorMetadata(fileAuthorMetadata);

// Execute the comparison and save the resulting document with the defined options
comparer.compare(outputFile, saveOptions);

// Terminate the process with a success exit code
process.exit(0);
```

This example demonstrates how to set custom metadata for the result document. It creates a `FileAuthorMetadata` object and sets custom values for author, company, and last-save-by fields. This metadata object is then attached to the `SaveOptions` using `setFileAuthorMetadata()`. When the comparison is performed, the result document will contain these custom metadata values instead of copying from either the source or target document.
