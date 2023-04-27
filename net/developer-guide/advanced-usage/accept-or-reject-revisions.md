---
id: accept-or-reject-revisions
url: comparison/net/accept-or-reject-revisions
title: Accept or Reject revisions
weight: 5
description: "Following this guide, you will learn how to apply or discard revisions found during document comparison using built-in Microsoft Word functionality."
keywords: Revision, revision processing, accept or reject revision, apply change for revision
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
    name: How to accept or Reject revisions  in .NET
    description: Learn how to accept or Reject revisions in .NET step by step
    steps:
      - name: Create an object
        text: Create an object of RevisionHandler class. The constructor takes the revision path or the revision file stream.
      - name: Get revision
        text: Call the GetRevisions method of the RevisionHandler object and asign the value to RevisionInfo list.
      - name: Accept or Reject revision
        text: If list element type equals Insertion value of RevisionType enum then Accept value of the RevisionAction enum asign to Action field of the element.
      - name: Apply revision changes
        text: To apply changes call the method ApplyRevisionChanges of the RevisionHandler object. The method takes a file path parameter of the resulting file and object of ApplyRevisionOptions class which should contains a Changes field initialised by RevisionInfo list.
---

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** provides the ability to get revisions from a Docx file format, process and save the processing result.
Below are the steps to _take_ revisions from a document, _accept / reject_ revisions, and _write_ the processing result to a final file.

- Instantiate [RevisionHandler](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) object with source document path or stream;
- Call [GetRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/getrevisions) method and obtain detected revision list;
- Set [Action](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisioninfo/properties/action) of needed change object to [RevisionAction.Accept](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) or [RevisionAction.Reject](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) value;
- Call the [ApplyRevisionChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index) method, to which you need to pass the newly created instance of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) object and pass to it path or stream of the resulting document, collecting changes in the revisions.

It is also possible to process all changes together, applying one action for all changes. Below are the steps to handle all changes:

- Instantiate [RevisionHandler](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) object with source document path or stream;
- Call the [ApplyRevisionChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index) method, to which you need to pass the newly created instance of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) object and pass to it action ([RevisionAction.Accept](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction), [RevisionAction.Reject](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) or [RevisionAction.None](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction)) that will apply to all revisions.

[ApplyRevisionOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) class:

- [Changes](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/properties/changes) - List of revision changes that need to be applied to the final document.
- [CommonHandler](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/fields/commonhandler) - Property that allows you to define one action to handle all revision.

If you do not pass the path or file to the resulting document to the [ApplyRevisionChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges) method, the changes will be written to the same file from which the revisions were taken.

The following code example demonstrates how to get revisions from a document, accept / reject detected revisions and save changes to the resulting document.

## Accept or Reject revisions from local disk

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## Accept or Reject revisions from stream

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(File.OpenRead("Document_with_revision.docx")))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## Accept or Reject all revisions

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
	revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { CommonHandler = RevisionAction.Accept });
}
```

## Result of revision processing

Below are the source and output files based on the code presented earlier.

| Source file                                   | Result file                                          |
| --------------------------------------------- | ---------------------------------------------------- |
| ![](/comparison/net/images/revision-file.png) | ![](/comparison/net/images/result-revision-file.png) |

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

Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
