---
id: groupdocs-comparison-for-net-19-9-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-9-release-notes
title: "GroupDocs.Comparison for .NET 19.9 发行说明"
weight: 5
description: ""
关键词：
产品名称：GroupDocs.Comparison for .NET
隐藏儿童：假
---
{{< alert style="info" >}}此页面包含 GroupDocs.Comparison for .NET 19.9 的发行说明{{< /alert >}}

## 主要特点

{{< alert style="danger" >}}在这个版本中，我们引入了新的公共 API，其设计简单易用。有关新 API 的更多详细信息，请查看公共文档部分。旧版 API 已移至旧版命名空间，因此在更新到此版本后，需要在项目范围内替换 GroupDocs.Comparison 中的命名空间使用。到 GroupDocs.Comparison.Legacy。解决构建问题。{{< /alert >}}

## 公共 API 和向后不兼容的更改

GroupDocs.Comparison 命名空间中的所有公共类型：

1. 已移至 **GroupDocs.Comparison.Legacy** 命名空间
2. 标记为 **Obsolete** 并带有消息：*此接口/类/枚举已过时，将在 2020 年 1 月 (v20.1) 之前可用。*

#### 已被移动并标记为过时的类型的完整列表：

1. GroupDocs.Comparison.Comparer => GroupDocs.Comparison.Legacy.Comparer
2. GroupDocs.Comparison.License => GroupDocs.Comparison.Legacy.License
3. GroupDocs.Comparison.Metered => GroupDocs.Comparison.Legacy.Metered
4. GroupDocs.Comparison.Localization.SupportedLocales => GroupDocs.Comparison.Legacy.Localization.SupportedLocales
5. GroupDocs.Comparison.ImageConverter => GroupDocs.Comparison.Legacy.ImageConverter
6. GroupDocs.Comparison.Informer => GroupDocs.Comparison.Legacy.Informer
7. GroupDocs.Comparison.MultiComparer => GroupDocs.Comparison.Legacy.MultiComparer
8. GroupDocs.Comparison.Changes.ChangeInfo => GroupDocs.Comparison.Legacy.Changes.ChangeInfo
9. GroupDocs.Comparison.Changes.ComparisonAction => GroupDocs.Comparison.Legacy.Changes.ComparisonAction
10. GroupDocs.Comparison.Changes.ComparisonCategoriesType => GroupDocs.Comparison.Legacy.Changes.ComparisonCategoriesType
11. GroupDocs.Comparison.Changes.ComparisonChangesCategory => GroupDocs.Comparison.Legacy.Changes.ComparisonChangesCategory
12. GroupDocs.Comparison.Changes.PageInfo => GroupDocs.Comparison.Legacy.Changes.PageInfo
13. GroupDocs.Comparison.Changes.Rectangle => GroupDocs.Comparison.Legacy.Changes.Rectangle
14. GroupDocs.Comparison.Changes.StyleChangeInfo => GroupDocs.Comparison.Legacy.Changes.StyleChangeInfo
15. GroupDocs.Comparison.Changes.Rectangle => GroupDocs.Comparison.Legacy.Changes.Rectangle
16. GroupDocs.Comparison.Common.CommonMethods => GroupDocs.Comparison.Legacy.Common.CommonMethods
17. GroupDocs.Comparison.Options.ICompareResult => GroupDocs.Comparison.Legacy.Options.ICompareResult
18. GroupDocs.Comparison.Options.ComparisonMetadata => GroupDocs.Comparison.Legacy.Options.ComparisonMetadata
19. GroupDocs.Comparison.Options.ComparisonSettings => GroupDocs.Comparison.Legacy.Options.ComparisonSettings
20. GroupDocs.Comparison.Options.DetailLevel => GroupDocs.Comparison.Legacy.Options.DetailLevel
21. GroupDocs.Comparison.Options.DiagramMasterSetting => GroupDocs.Comparison.Legacy.Options.DiagramMasterSetting
22. GroupDocs.Comparison.Options.OriginalSize => GroupDocs.Comparison.Legacy.Options.ComparisonMetadata
23. GroupDocs.Comparison.Options.PasswordSaveOption => GroupDocs.Comparison.Legacy.Options.PasswordSaveOption
24. GroupDocs.Comparison.Options.StyleSettings => GroupDocs.Comparison.Legacy.Options.StyleSettings
25. GroupDocs.Comparison.Options.TypeMetadata => GroupDocs.Comparison.Legacy.Options.TypeMetadata
26. GroupDocs.Comparison.Options.PageImage => GroupDocs.Comparison.Legacy.Options.PageImage
27. GroupDocs.Comparison.Options.TypeChanged => GroupDocs.Comparison.Legacy.Options.TypeChanged
28. GroupDocs.Comparison.Common.DocumentInfo.DocumentInfo => GroupDocs.Comparison.Legacy.Common.DocumentInfo.DocumentInfo
29. GroupDocs.Comparison.Common.DocumentInfo.IDocumentInfo => GroupDocs.Comparison.Legacy.Common.DocumentInfo.IDocumentInfo
30. GroupDocs.Comparison.Common.Exceptions.ComparisonException => GroupDocs.Comparison.Legacy.Options.Exceptions.ComparisonException
31. GroupDocs.Comparison.Common.Exceptions.DocumentComparisonException => GroupDocs.Comparison.Legacy.Options.Exceptions.DocumentComparisonException
32. GroupDocs.Comparison.Common.Exceptions.FileFormatException => GroupDocs.Comparison.Legacy.Common.Exceptions.FileFormatException
33. GroupDocs.Comparison.Common.Exceptions.FileFormatNotSupportComparisonException => GroupDocs.Comparison.Legacy.Common.Exceptions.FileFormatNotSupportComparisonException
34. GroupDocs.Comparison.Common.Exceptions.InvalidPasswordException => GroupDocs.Comparison.Legacy.Common.Exceptions.InvalidPasswordException
35. GroupDocs.Comparison.Common.Exceptions.ComparisonException => GroupDocs.Comparison.Legacy.Common.Exceptions.ComparisonException
36. GroupDocs.Comparison.Common.Exceptions.ImageOptions => GroupDocs.Comparison.Legacy.Common.Exceptions.UnsupportedFormatException
37. GroupDocs.Comparison.Processing.Utils.ComparisonLogger => GroupDocs.Comparison.Legacy.Processing.Utils.ComparisonLogger
38. GroupDocs.Comparison.Processing.Utils.ConsoleLogger => GroupDocs.Comparison.Legacy.Processing.Utils.ConsoleLogger
39. GroupDocs.Comparison.Processing.Utils.ILogger => GroupDocs.Comparison.Legacy.Processing.Utils.ILogger
40. GroupDocs.Comparison.Processing.Utils.LoggingLevel => GroupDocs.Comparison.Legacy.Processing.Utils.LoggingLevel

