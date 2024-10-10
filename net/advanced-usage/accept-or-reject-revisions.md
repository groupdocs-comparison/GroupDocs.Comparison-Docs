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

[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to get revisions from a Docx file format, process, and save the processing result.
To take revisions from a document,_accept / reject revisions, and write the processing result to the output file, follow these steps:

1.  Instantiate the [RevisionHandler](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) object. Specify the source document path or stream.
2.  Call the [GetRevisions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/getrevisions) method to get the revision list.
3.  Set the [Action](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisioninfo/properties/action) property of the object to be changed to the [RevisionAction.Accept](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) or [RevisionAction.Reject](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) value.
4.  Call the [ApplyRevisionChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index) method. Specify the created instance of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) class and path or stream of the output document, collecting changes in the revisions.

You can process all changes together within one action.To handle all changes at once, follow these steps:

1.  Instantiate the [RevisionHandler](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) object. Specify the source document path or stream.
2.  Call the [ApplyRevisionChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index) method. Specify the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) object and one of the ([RevisionAction.Accept](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction), [RevisionAction.Reject](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) or [RevisionAction.None](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction)) values.

The main properties of the [ApplyRevisionOptions](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) class are as follows:

*   [Changes](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/properties/changes) is a list of revision changes that need to be applied to the final document
*   [CommonHandler](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/fields/commonhandler) allows you to define one action to handle all revision

If you do not specify the path or file to the output document for the [ApplyRevisionChanges](https://reference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges) method, the source file is rewritten.

The following code snippets show how to get revisions from a document, accept / reject detected revisions and save changes to the output document:

## Accept or Reject revisions from local disk

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.Collections.Generic;
using GroupDocs.Comparison.Words.Revision;
// ...

using (RevisionHandler revisionHandler = new RevisionHandler(
    pathRevision + "Document_with_revision.docx"))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() 
    { 
        Changes = revisionList 
    });
}
```
{{< /tab >}}
{{< /tabs >}}

## Accept or Reject revisions from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.Collections.Generic;
using GroupDocs.Comparison.Words.Revision;
// ...

using (RevisionHandler revisionHandler = new RevisionHandler(
    File.OpenRead("Document_with_revision.docx")))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() 
    { 
        Changes = revisionList 
    });
}
```
{{< /tab >}}
{{< /tabs >}}

## Accept or Reject all revisions

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using GroupDocs.Comparison.Options;
using System.Collections.Generic;
using GroupDocs.Comparison.Words.Revision;
// ...

using (RevisionHandler revisionHandler = new RevisionHandler(
    pathRevision + "Document_with_revision.docx"))
{
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() 
    { 
        CommonHandler = RevisionAction.Accept 
    });
}
```
{{< /tab >}}
{{< /tabs >}}

## Result of revision processing

Below are the source and output files based on the code presented earlier.

| Source file                                   | Result file                                          |
| --------------------------------------------- | ---------------------------------------------------- |
| ![](/comparison/net/images/revision-file.png) | ![](/comparison/net/images/result-revision-file.png) |
