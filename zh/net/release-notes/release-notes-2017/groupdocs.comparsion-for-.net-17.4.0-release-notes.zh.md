---
id: groupdocs-comparsion-for-net-17-4-0-release-notes
url: comparison/net/groupdocs-comparsion-for-net-17-4-0-release-notes
title: ".NET 17.4.0 发行说明的 GroupDocs.Comparsion"
weight: 8
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparsion for .NET 17.4.0 的发行说明{{< /alert >}}

## 主要特点

在这个每月定期发布的版本中有 3 个新功能、3 个改进和 4 个修复。最值得注意的是：

* 向 GroupDocs.Comparison 公共 API 引入了对格式的多重比较的支持
* 引入了对 CAD 格式的支持
*改进了图像格式的比较
* 简化所有支持格式的 API
* 修复了 GroupDocs.Comparison.PDF 的多列表比较问题
* GroupDocs.Comparison.PDF：修复段落中的文本与表格重叠时的错误

## 涵盖此版本中所有更改的完整问题列表

|钥匙 |总结 |类别 |
| --- | --- | --- |
|比较网-1143 |向 GroupDocs.Comparison 公共 API 添加对格式的多重比较的支持 |新功能 |
|比较网-1172 |为成像添加 UpdateChanges 模型 |新功能 |
|比较网-1175 |添加对比CAD的支持 |新功能 |
|比较网-1188 |改进图像格式的比较 |改进 |
|比较网-1182 |跨所有受支持格式的跨格式 API 简化 |改进 |
|比较网-1080 |比较.PDF：改进段落的比较更改检测 |改进 |
|比较网-1184 | GroupDocs.Comparison.Words：由 Words 引擎比较的带有 html 内容的文本文件 |错误 |
|比较网-1185 | GroupDocs.Comparison.Text：修复使用单词比较器比较 .txt 文件中的 html 代码 |错误 |
|比较网-1200 | GroupDocs.Comparison.PDF：修复段落中的文本与表格重叠时的错误 |错误 |
|比较网-1208 |立面处理图像 |错误 |

## 公共 API 和向后不兼容的更改

{{< alert style="info" >}}本部分列出了在 GroupDocs.Comparison 中为 .NET 17.4.0 引入的公共 API 更改。它不仅包括新的和过时的公共方法，还包括对 GroupDocs.Comparison 中可能影响现有代码的幕后行为的任何更改的描述。引入的任何可以被视为回归并修改现有行为的行为都特别重要，并在此处记录。{{< /alert >}}

### 比较文件中的两个以上文档：

```csharp
string source = "source.docx";
List<string> targets = new List<string>
{
	"target.docx",
	"target1.docx",
	"target2.docx"
};
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, targets, new ComparisonSettings());

```

### 比较流中的两个以上文档：

```csharp
Stream source = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
List<Stream> targets = new List<Stream>
{
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target1.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target2.docx")
}; 
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, targets, new ComparisonSettings());



```

### 将两个以上的文档与文件中的密码进行比较：

```csharp
string source = "source.docx";
List<string> targets = new List<string>
{
	"target.docx",
	"target1.docx",
	"target2.docx"
};
string sourcePassword = "password";
List<string> targetPasswords = new List<string>
{
	"password",
	"password",
	"password"
};
Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, targets, targetPasswords, new ComparisonSettings());
```

### 将两个以上的文档与流中的密码进行比较：

```csharp
Stream sourceStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("source.docx");
List<Stream> targets = new List<Stream>
{
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target1.docx"),
	Assembly.GetExecutingAssembly().GetManifestResourceStream("target2.docx")
}; 

string sourcePassword = "password";
List<string> targetPasswords = new List<string>
{
	"password",
	"password",
	"password"
};

Comparer comparer = new Comparer();
ICompareResult result = comparer.Compare(source, sourcePassword, targets, targetPasswords, new ComparisonSettings());
```

