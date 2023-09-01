---
id: how-to-run-examples
url: comparison/net/how-to-run-examples
title: How to Run Examples
weight: 6
description: "In this article you can find how to run examples. We offer multiple solutions on how you can run GroupDocs.Comparison examples, by building your own or using our back-end or front-end examples out-of-the-box."
keywords: How to run comparison, basic usage, How to run examples
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
    name: How to Run Examples in .NET
    description: How to Run Examples in .NET step by step
    steps:
      - name: Create an object and load source file
        text: Create an object of Comparer class. The constructor takes the source file path parameter. You may specify absolute or relative file path as per your requirements.
      - name: Load target file
        text: Add the path to the tagret file using the Add method
      - name: Compare documents
        text: Call the Compare method of your object and put the resulting file path parameter.
---

{{< alert style="warning" >}}Make sure that GroupDocs.Comparison has been installed properly before running examples.{{< /alert >}}

We offer multiple solutions on how you can run [GroupDocs.Comparison](https://products.groupdocs.com/comparison/net) examples, by building your own or using our back-end or front-end examples out-of-the-box.

Please choose one from the following list:

## Build project from scratch

1. Open Visual Studio and navigate to **File** -> **New** -> **Project**.
2. Select the appropriate project type - Console App, ASP.NET Web Application etc.
3. Install **GroupDocs.Comparison for .NET** from Nuget or official GroupDocs website following the [guide]({{< ref "comparison/net/getting-started/installation.md" >}}).
4. Develop your first application with **GroupDocs.Comparison for .NET** like shown below:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
string sourceDocumentPath = @"C:\source.docx"; // NOTE: Put here actual path to source document
string targetDocumentPath = @"C:\target.docx"; // NOTE: Put here actual path to source document
string outputPath = @"C:\result.docx"; // NOTE: Put here actual path to source document

using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    comparer.Compare(outputPath);
}
```
{{< /tab >}}
{{< /tabs >}}

5. Build and run your project.
6. Check the rendered document pages at path specified in the _"outputPath"_ parameter.

## Run back-end examples

The [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET) hosts the complete GroupDocs.Comparison examples package. You can either [download the ZIP file](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET/archive/master.zip) or clone the GitHub repository using your favorite git client.  
If you download the ZIP file, extract it content to your local disk. The extracted files and folders will look as follows:

![](/comparison/net/images/how-to-run-examples.jpg)

In extracted files and folders, you can find CSharp solution file. The project is created using Visual Studio 2019. The **Resources** folder contains all the sample document and image files used in the examples.  
To run the examples, open the solution file in Visual Studio and build the project. To add missing references of GroupDocs.Comparison see [the installation guide]({{< ref "comparison/net/getting-started/installation.md" >}}). The **RunExamples.cs** calls all the functions.
Uncomment the function to run and comment the rest.

![](/comparison/net/images/how-to-run-examples_1.png)

## Run MVC examples

To run [GroupDocs.Comparison for .NET MVC Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC), follow these steps:

1. Download [source code](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC/archive/master.zip) from GitHub or clone this repository:
{{< tabs "example2">}}
{{< tab "CLI" >}}
  ```git
  git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC
  ```
{{< /tab >}}
{{< /tabs >}}

2. Open solution in the VisualStudio. Update common parameters in **web.config** and example related properties in the **configuration.yml** to meet your requirements.
3. Open [http://localhost:8080/comparison](http://localhost:8080/comparison) in your favorite browser

For more details about project configuration please refer to this [guide](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC#configuration).

## Run WebForms examples

You can run [GroupDocs.Comparison for .NET Web.Forms Example](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms) following these steps:

1. Download the [source code](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms/archive/master.zip) from GitHub or clone the repository:
 
{{< tabs "example3">}}
{{< tab "CLI" >}}
  ```git
  git clone https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms
  ```
{{< /tab >}}
{{< /tabs >}}

2. Open solution in the VisualStudio. Update common parameters in **web.config** and example related properties in the **configuration.yml** to meet your requirements.
3. Open [http://localhost:8080/comparison](http://localhost:8080/comparison) in browser.

For details, see the [guide](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms#configuration).

## Run using Docker

Use the [Docker](https://www.docker.com/) image to try GroupDocs.Comparison for .NET features in an easy way. Execute the following commands to run GroupDocs.Comparison for .NET from docker image:

{{< tabs "example4">}}
{{< tab "CLI" >}}
```powershell
mkdir DocumentSamples
mkdir Licenses
docker run -p 8080:8080 --env application.hostAddress=localhost -v `pwd`/DocumentSamples:/home/groupdocs/app/DocumentSamples -v `pwd`/Licenses:/home/groupdocs/app/Licenses groupdocs/comparison
## Open http://localhost:8080/comparison in your favorite browser.
```
{{< /tab >}}
{{< /tabs >}}

## Contribute

If you like to add or improve an example, we encourage you to contribute to the project. All examples in this repository are open source and can be freely used in your own applications.  
To contribute, you can fork the repository, edit the code and create a pull request. We will review the changes and include it in the repository if found helpful.
