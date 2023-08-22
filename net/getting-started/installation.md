---
id: installation
url: comparison/net/installation
title: Installation
weight: 4
description: "On this page you will find system requirements supported platforms, development environments. GroupDocs.Comparison for .NET does not require any external software or third party tool to be installed."
keywords: Install from Nuget, How to install GroupDocs.Comparison, Install from website
productName: GroupDocs.Comparison for .NET
hideChildren: False
toc: True
---

This topic describes how to add the GroupDocs.Comparison library to your .NET project. You can use a NuGet package to install this library or you can download necessary DLLs from the GroupDocs website: [https://releases.groupdocs.com/comparison/net/](https://releases.groupdocs.com/comparison/net/).

## Install GroupDocs.Comparison using NuGet packages

You can use the following tools to install the [GroupDocs.Comparison](https://www.nuget.org/packages/GroupDocs.Comparison) NuGet package: 

 * [NuGet Package Manager](#use-the-nuget-package-manager-in-visual-studio)
 * [Package Manager Console](#use-the-package-manager-console-in-visual-studio)
 * [.NET CLI](#use-the-net-cli)

### Use the NuGet Package Manager

Open your project or solution in Visual Studio and follow the steps below to install the GroupDocs.Comparison package using the [NuGet Package Manager](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-visual-studio):

1. In **Solution Explorer**, right-click your project name and select **Manage NuGet Packages** to display the NuGet Package Manager.

2. Select the **Browse** tab and type `GroupDocs.Compariso` in the search box. Select the latest version of the GroupDocs.Comparison package and click **Install**.

    ![](/comparison/net/images/installation.png)

### Use the Package Manager Console

The [Package Manager Console](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-powershell) uses the PowerShell commands to install, update, and remove NuGet packages. Open project in Visual Studio and click **Tools** -> **NuGet Package Manager** -> **Package Manager Console** to open the console window. To install the latest version of the GroupDocs.Comparison library, execute the following command:

{{< tabs "example1">}}
{{< tab "PowerShell" >}}
```
PM> Install-Package GroupDocs.Comparison
```
{{< /tab >}}
{{< /tabs >}}

![Use Package Manager Console ](/comparison/net/images/installation_1.png)

### Use the .NET CLI

You can use the [.NET CLI tool](https://docs.microsoft.com/en-us/dotnet/core/tools/) to install and update NuGet packages. In your project's folder, open a terminal and execute the following command to install the GroupDocs.Comparison package:

{{< tabs "example2">}}
{{< tab ".NET CLI" >}}
```
dotnet add package GroupDocs.Comparison
```
{{< /tab >}}
{{< /tabs >}}

## Download GroupDocs.Comparison from the official website

Visit [list of GroupDocs.Comparison releases](https://releases.groupdocs.com/comparison/net/) and download the GroupDocs.Comparison assemblies as a ZIP archive or MSI installer. To reference the downloaded assembly files in your project, follow these steps:

1. Extract files from the ZIP archive or run the MSI installer to install GroupDocs.Comparison to a specific location on your computer.
2. Open your solution or project in Visual Studio.
3. In **Solution Explorer**, right-click the **References** or **Dependencies** node, and select **Add Reference** (for a .NET Framework project) or **Add Project Reference** (for a .NET Core project).
4. In the **Reference Manager** dialog box, select the **Browse** tab and click **Browse** to locate the _GroupDocs.Comparison.dll_ file for the target framework.
5. Click **OK** to add a reference to the GroupDocs.Comparison library to your project.

{{< alert style="warning" >}}
If your application targets .NET Core / .NET 5+, ensure that your project has all the required dependencies installed. Refer to the following page for details: [GroupDocs.Comparison dependencies](https://www.nuget.org/packages/groupdocs.comparison#dependencies-body-tab).
{{< /alert >}}
