---
id: accept-or-reject-revisions
url: comparison/java/accept-or-reject-revisions
title: Accept or Reject revisions
weight: 4
description: "Following this guide, you will learn how to apply or discard revisions found during document comparison using built-in Microsoft Word functionality."
keywords: Revision, revision processing, accept or reject revision, apply change for revision
productName: GroupDocs.Comparison for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Documents Comparison Tool
    description: The product allows to compare Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code and much more file formats. Comparison API also supports accepting or rejecting changes, extracting document information and generating comparison report
    productCode: comparison
    productPlatform: java
  howTo:
    name: How to accept or reject revisions
    description: Learn how to accept or reject revisions
    steps:
      - name: Create 'RevisionHandler' object
        text: Create object of 'RevisionHandler' class passing source document as a constructor argument
      - name: Get list of revisions
        text: Use 'getRevisions()' method to get lst of revisions
      - name: Check type of each revision and apply required action
        text: Check revisions types using 'getType()' method that returns one of 'RevisionType.*' value and apply required action using method 'setAction(RevisionAction.ACCEPT)'
      - name: Create object of 'ApplyRevisionOptions' class
        text: Create instance of 'ApplyRevisionOptions' class and use its methods 'setChanges(changesList)' to put changes
      - name: Apply revision changes
        text: Use method 'applyRevisionChanges()' of 'RevisionHandler' object passing result document path and revision options as arguments
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** provides the ability to get revisions from a Docx file format, process and save the processing result.
Below are the steps to _take_ revisions from a document, _accept / reject_ revisions, and _write_ the processing result to a final file.

- Instantiate [RevisionHandler](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) object with source document path or stream;
- Call [getRevisions](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#getRevisions()>) method and obtain detected revision list;
- Set [Action](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionInfo#setAction(com.groupdocs.comparison.words.revision.RevisionAction)>) of needed change object to [RevisionAction.ACCEPT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept) or [RevisionAction.REJECT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) value;
- Call the [applyRevisionChanges](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions)>) method, to which you need to pass the newly created instance of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) object and pass to it path or stream of the resulting document, collecting changes in the revisions.

It is also possible to process all changes together, applying one action for all changes. Below are the steps to handle all changes:

- Instantiate [RevisionHandler](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) object with source document path or stream;
- Call the [applyRevisionChanges](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions)>) method, to which you need to pass the newly created instance of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) object and pass to it action ([RevisionAction.ACCEPT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept), [RevisionAction.REJECT](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) or [RevisionAction.None](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#None)) that will apply to all revisions.

[ApplyRevisionOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) class:

- [getChanges](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getChanges()>) - List of revision changes that need to be applied to the final document.
- [CommonHandler](<https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getCommonHandler()>) - Property that allows you to define one action to handle all revision.

If you do not pass the path or file to the resulting document to the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) method, the changes will be written to the same file from which the revisions were taken.

The following code example demonstrates how to get revisions from a document, accept / reject detected revisions and save changes to the resulting document.

## Accept or Reject revisions from local disk

<script src="https://gist.github.com/groupdocs-comparison-gists/959d27303cb17b3f1c026ca018626137.js"></script>

## Accept or Reject revisions from stream

<script src="https://gist.github.com/groupdocs-comparison-gists/4e175bc335e86438f4dc6e742e8b4c57.js"></script>

## Accept or Reject all revisions

<script src="https://gist.github.com/groupdocs-comparison-gists/f66fbdb53c66bd82c03d5697d47bf9d0.js"></script>

## Result of revision processing

Below are the source and output files based on the code presented earlier.

| Source file                                    | Result file                                           |
| ---------------------------------------------- | ----------------------------------------------------- |
| ![](/comparison/java/images/revision-file.png) | ![](/comparison/java/images/result-revision-file.png) |

## More resources

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

- [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
- [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
- [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
- [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
- [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
- [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

### Free Online App

Along with full-featured Java library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
