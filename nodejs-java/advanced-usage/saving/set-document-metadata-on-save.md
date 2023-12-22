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
structuredData:
  showOrganization: True
  application:
    name: Document Comparison
    description: Compare documents natively with high performance using JavaScript language and GroupDocs.Comparison for Node.js via Java
    productCode: comparison
    productPlatform: nodejs-java
  showVideo: True
  howTo:
    name: How to set document metadata on save in JavaScript
    description: Learn how to set document metadata on save in JavaScript step by step
    steps:
      - name: Create an object and load the source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file paths as per your requirements.
      - name: Load the target file
        text: Add the path to the target file using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter and the SaveOtions object with the required metadata parameter initialized by the MetadataType enum.
---

A document can contain some metadata information, such as author, organization, etc. [GroupDocs.Comparison](https://products.groupdocs.com/comparison/nodejs-java) allows you to select metadata sources when saving the output document.  

Possible metadata sources are as follows:

- Source document metadata
- Target document metadata
- User-defined metadata

To set output document metadata, follow these steps:

1.  Instantiate the `Comparer`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer)--> object. Specify the source document path or stream.
2.  Call the `add()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#add-java.lang.String-)--> method. Specify the target document path or stream.
3.  Instantiate the `SaveOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.save/SaveOptions)--> object. Call the `setCloneMetadataType()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.save/saveoptions/#setCloneMetadataType-com.groupdocs.comparison.options.enums.MetadataType-)--> method to set the appropriate `MetadataType`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.enums/metadatatype/)--> variant.
4.  Call the `compare()`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison/comparer/#compare-java.lang.String-)--> method. Specify the `SaveOptions`<!--](https://reference.groupdocs.com/comparison/nodejs-java/com.groupdocs.comparison.options.save/saveoptions/)--> object as a parameter.

The following code snippets show how to set output document metadata:

## Set metadata from the source file

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const saveOptions = new groupdocs.comparison.SaveOptions();
saveOptions.setCloneMetadataType(groupdocs.comparison.MetadataType.SOURCE);
const resultPath = comparer.compare(outputFile, saveOptions);
```

## Set metadata from the target file

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const saveOptions = new groupdocs.comparison.SaveOptions();
saveOptions.setCloneMetadataType(groupdocs.comparison.MetadataType.TARGET);
const resultPath = comparer.compare(outputFile, saveOptions);
```

## Set user-defined metadata 

```javascript
const comparer = new groupdocs.comparison.Comparer(sourceFile);
comparer.add(targetFile);
const fileAuthorMetadata = new groupdocs.comparison.FileAuthorMetadata();
fileAuthorMetadata.setAuthor("Tom");
fileAuthorMetadata.setCompany("GroupDocs");
fileAuthorMetadata.setLastSaveBy("Jack");
const saveOptions = new groupdocs.comparison.SaveOptions();
saveOptions.setCloneMetadataType(groupdocs.comparison.MetadataType.FILEAUTHOR);
saveOptions.setFileAuthorMetadata(fileAuthorMetadata);
const resultPath = comparer.compare(outputFile, saveOptions);
```
