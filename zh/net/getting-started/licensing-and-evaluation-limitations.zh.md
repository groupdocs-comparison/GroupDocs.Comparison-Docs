---
id：许可和评估限制
url: comparison/net/licensing-and-evaluation-limitations
title: "许可和评估限制"
weight: 5
description: "按照此站点上的说明配置许可证并找出在没有许可证的情况下使用 GroupDocs.Comparison for .NET 时的限制（评估限制）"
keywords: "许可、评估限制、设置计量许可证、设置许可证"
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
结构化数据：
显示组织：真
应用：
名称：文档比较
      description: "使用 C# 语言和 GroupDocs.Comparison for .NET 以高性能方式本地比较文档"
产品代码：比较
产品平台：net
显示视频：真
如何：
名称：如何在 .NET 中设置许可证
      description: "逐步了解如何在 .NET 中设置许可证"
脚步：
- 名称：创建一个对象
文本：创建许可证类别的对象。
- 名称：设置许可证
text: 调用对象的 SetLicense 方法并放入许可路径或许可文件流参数。
---
{{< alert style="info" >}}您可以在没有许可证的情况下使用 GroupDocs.Comparison。用法和功能与许可 API 几乎相同，但在使用非许可 API 时您将面临一些限制。{{< /alert >}}

## 评估限制

您可以轻松下载 **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** 进行评估。评估下载与购买的下载相同。当您添加几行代码来应用许可时，评估版就会获得许可。在没有许可证的情况下使用 API 时，您将面临以下限制：

* 仅处理结构简单的前 3 个文档页面。
* PDF 文档在任何集合中的元素不应超过四个。
* 试用徽章放置在每页顶部的文档中。

## 许可

许可证文件包含产品名称、许可的开发人员数量、订阅到期日期等详细信息。它包含数字签名，所以不要修改文件。即使无意中在文件中添加了额外的换行符也会使其无效。如果您想避免其评估限制，则需要在使用 GroupDocs.Comparison API 之前设置许可证。
可以从文件或流对象加载许可证。设置许可证最简单的方法是将许可证文件放在与 GroupDocs.Comparison.dll 文件相同的文件夹中，并指定文件名，不带路径，如下例所示。

#### 从文件设置许可证

下面的代码将解释如何设置产品许可证。

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
// Setup license.
License license = new License();
license.SetLicense(licensePath);
```

#### 从流中设置许可证

以下示例显示如何从流中加载许可证。

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
using (FileStream fileStream = File.OpenRead("GroupDocs.Comparison.lic"))
{
    License license = new License();
    license.SetLicense(fileStream);
}
```

{{< alert style="info" >}}多次调用 License.SetLicense 无害，只会浪费处理器时间。如果您正在开发 Windows 窗体或控制台应用程序，请在启动代码中调用 License.SetLicense，然后再使用 GroupDocs.Comparison 类。在开发 ASP.NET 应用程序时，您可以在 Application_Start 受保护方法中从 Global.asax.cs (Global.asax.vb) 文件中调用 License.SetLicense。它在应用程序启动时调用一次。不要从 Page_Load 方法中调用 License.SetLicense，因为这意味着每次加载网页时都会加载许可证。{{< /alert >}}

#### 设置计量许可证

{{< alert style="info" >}}您还可以将计量许可证设置为许可证文件的替代品。这是一种新的许可机制，将与现有的许可方法一起使用。对于希望根据 API 功能的使用情况进行计费的客户非常有用。有关详细信息，请参阅计量许可常见问题解答部分。{{< /alert >}}

以下是使用 `Metered` 类的简单步骤。

1. 创建一个 `Metered` 类的实例。
2. 将公钥和私钥传递给 `SetMeteredKey` 方法。
3.做处理（执行任务）。
4.调用`Metered`类的`GetConsumptionQuantity`方法。
5. 它将返回您迄今为止消耗的 API 请求的数量/数量。
6.调用`Metered`类的`GetConsumptionCredit`方法。
7. 将返还您目前已消费的积分。

以下是演示如何使用 `Metered` 类的示例代码。

```csharp
// For complete examples and data files, please go to https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET
string publicKey = ""; // Your public license key
string privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.SetMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
decimal amountConsumed = GroupDocs.Comparison.Metered.GetConsumptionQuantity();
Console.WriteLine("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
decimal creditsConsumed = GroupDocs.Comparison.Metered.GetConsumptionCredit();
Console.WriteLine("Credits consumed: " + creditsConsumed);
```

