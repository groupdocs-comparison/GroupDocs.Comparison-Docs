---
id: how-to-compare-password-protected-files
url: comparison/net/how-to-compare-password-protected-files
title: How to Compare password-protected files
weight: 1
description: "Read this article and find out how you can use the GroupDocs.Comparison for .NET to find differences in password-protected files."
keywords: How to compare password-protected files, password-protected files, Compare password-protected
productName: GroupDocs.Comparison for .NET
hideChildren: False
---
Sometimes when working with documents you may need to get the result of a comparison of files in which one or even both files are password protected, and for this very case there is an option to compare files in spite of the fact that they are protected. This option allows you to compare protected files in any format where it is possible to set a password for the file.

![](comparison/net/images/how-to-compare-password-protected-files-1.png)

The code sample to compare two password-protected files:

```csharp
string sourcePath = @"source.format"; // NOTE: Path to the source document 
string targetPath = @"target.format"; // NOTE: Path to the target document 
string resultPath = @"result.format"; // NOTE: Path to the result document    

Options.LoadOptions loadOptionsSource = new Options.LoadOptions {Password = "passwordSource"}; // NOTE: options with password for the first file
Options.LoadOptions loadOptionsTarget = new Options.LoadOptions {Password = "passwordTarget"}; // NOTE: options with password for the second file
            
using (Comparer comparer = new Comparer(sourcePath, loadOptionsSource))
{
    comparer.Add(targetPath, loadOptionsTarget);
    CompareOptions compareOptions = new CompareOptions
   {
        DetectStyleChanges = true,
        DetalisationLevel = DetalisationLevel.High
   };
    comparer.Compare(resultPath, compareOptions);
}
```
As a result, we get the resulting comparison file of two password-protected files.

## More resources
### Advanced Usage Topics
To learn more about document comparison features, please refer to the [advanced usage section]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Comparison for .NET examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
*   [GroupDocs.Comparison for Java examples, plugins, and showcase](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
*   [Document Comparison for .NET MVC UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
*   [Document Comparison for .NET App WebForms UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
*   [Document Comparison for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
*   [Document Comparison for Java Spring UI Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    
### Free Online App
Along with full-featured .NET library we provide simple, but powerful free Apps.  
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
