---
id: get-changes-coordinates
url: comparison/net/get-changes-coordinates
title: Get changes coordinates
weight: 5
description: "This article explains how to obtain coordinates for detected changes at a document pages preview when compare documents with GroupDocs.Comparison for .NET"
keywords: Compare documents, get changes coordinates
productName: GroupDocs.Comparison for .NET
hideChildren: False
structuredData:
  showOrganization: True
  application:    
      name: Document Comparison   
      description: Compare documents natively with high performance using C# language and GroupDocs.Comparison for .NET
      productCode: comparison
      productPlatform: net
  showVideo: True
  howTo:
      name: How to get changes coordinates in .NET 
      description: Learn how to get changes coordinates in .NET step by step
      steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Specify necessary settings
        text: Create an options object and specify CalculateCoordinates of true value.
      - name: Compare documents
        text: Call the Compare method of your object and put the compare options parameter.
      - name: Create an array for file changes
        text: Call the GetChanges method on the Comparer object and assign the result to an array of type ChangeInfo.
      - name: Output changes coordinates
        text: Display information about the changes coordinates using the Box field for each element of the changes info object, and then use the field with the name of the coordinate.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** allows to detect changes between source and target documents and obtain changes coordinates at document preview images. These coordinates can be quite useful for highlighting detected changes at??document preview images with some graphics (for example, place a red rectangle around each detected change).

The following are the steps to obtain changes coordinates.

*   Instantiate??[Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer)??object??with source document path or stream;
*   Call??[Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index)??method and specify target document path or stream;
*   Instantiate??[CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions)??object??and set??[CalculateCoordinates](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions/properties/calculatecoordinates)??property to??true;
*   Call??[Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer)??method and pass??[CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions)??object from previous step;
*   Call??[GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index)??method.

The following code sample shows how to compare??multiple documents with specific options.

## Coordinates calculation example

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions(){ CalculateCoordinates = true };
    comparer.Compare(compareOptions);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    	Console.WriteLine("Change Type: {0}, X: {1}, Y: {2}, Text: {3}", change.Type, change.Box.X, change.Box.Y, change.Text);
}
```

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our??GitHub examples:
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    
### Free Online App
Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX,??PDF, EML, EMLX, MSG and other documents with free to use online??[GroupDocs Comparison App](https://products.groupdocs.app/comparison).