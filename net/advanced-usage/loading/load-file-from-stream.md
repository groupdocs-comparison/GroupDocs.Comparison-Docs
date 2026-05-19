---
id: load-file-from-stream
url: comparison/net/load-file-from-stream
title: Load file from stream
weight: 2
description: "Pass a FileStream or any System.IO.Stream directly to the Comparer constructor and Add() method to compare documents without saving them to disk first in GroupDocs.Comparison for .NET."
keywords: load file from stream, Comparer stream, FileStream comparison, System.IO.Stream, in-memory comparison, stream-based document loading
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
    name: How load file from stream in .NET
    description: Learn how to load file from stream in .NET step by step
    steps:
      - name: Create an object and specify source file stream
        text: Create an object of Comparer class. The constructor takes the source file stream. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the target file stream using the Add method.
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file stream.
---

To avoid the saving stream as a file, [GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) allows you to work with file streams directly.

To work with stream, follow these steps:

1.  Obtain file stream.
2.  Pass opened source file stream to the [Comparer](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) class constructor or pass opened target file stream to the [Add](https://reference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) method.

The following code snippet shows how to load file from stream:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Comparison;
using System.IO;
// ...

using (Stream sourceStream = File.OpenRead("source.docx"))
using (Stream targetStream = File.OpenRead("target.docx"))
{
    using (Comparer comparer = new Comparer(sourceStream))
    {
        comparer.Add(targetStream);
        comparer.Compare(File.Create("result.docx"));
    }
}
```
{{< /tab >}}
{{< /tabs >}}

## See also

- [Load file from local disk]({{< ref "comparison/net/advanced-usage/loading/load-file-from-local-disk.md" >}})
- [Load password-protected documents]({{< ref "comparison/net/advanced-usage/loading/load-password-protected-documents.md" >}})
- [Compare documents]({{< ref "comparison/net/comparison-basic/compare-documents.md" >}})
