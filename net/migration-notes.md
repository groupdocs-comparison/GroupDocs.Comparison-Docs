---
id: migration-notes
url: comparison/net/migration-notes
title: Migration Notes
weight: 4
description: ""
keywords:
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
    name: Comparer Migration Notes in .NET
    description: Comparer Migration Notes in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---

### Why To Migrate?

Here are the key reasons to use the new updated API provided by GroupDocs.Comparison for .NET since version 19.9:

*   The `Comparer` class introduced as a single entry point to compare documents of any supported file format with various options and ability to accept/reject differences in output document.
*    Document compare options for all document types. Instead of using document related options now options are related to compare type only.
*    The overall document related classes were unified to common.
*    Product architecture was redesigned from scratch in order to simplify passing options and classes to manipulate comparison.
*    Document information and preview generation procedures were simplified.

### How To Migrate?

Here is a brief comparison of how to compare document with old and new API.

### Old coding style

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
Comparer comparer = new Comparer();
ComparisonSettings settings = new ComparisonSettings()
{
	StyleChangeDetection = true
};
ICompareResult result = comparer.Compare("source.docx", @"target.docx", settings);
result.SaveDocument("result.docx");
```
{{< /tab >}}
{{< /tabs >}}

### New coding style

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions()
    {
        DetectStyleChanges = true
    };
	comparer.Compare("result.docx", compareOptions);
}
```
{{< /tab >}}
{{< /tabs >}}