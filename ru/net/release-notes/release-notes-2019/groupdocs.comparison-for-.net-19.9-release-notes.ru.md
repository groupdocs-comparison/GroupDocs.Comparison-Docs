---
id: groupdocs-comparison-for-net-19-9-release-notes
url: comparison/net/groupdocs-comparison-for-net-19-9-release-notes
title: "Заметки о выпуске GroupDocs.Comparison для .NET 19.9"
weight: 5
description: ""
ключевые слова:
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
{{< alert style="info" >}}Эта страница содержит примечания к выпуску GroupDocs.Comparison для .NET 19.9{{< /alert >}}

## Основные характеристики

{{< alert style="danger" >}}В этой версии мы представляем новый общедоступный API, который был разработан, чтобы быть простым и удобным в использовании. Для получения более подробной информации о новом API, пожалуйста, посетите раздел Public Docs. Устаревший API был перемещен в пространство имен Legacy, поэтому после обновления до этой версии необходимо выполнить замену использования пространства имен в рамках всего проекта из GroupDocs.Comparison. в GroupDocs.Comparison.Legacy. для решения проблем со сборкой.{{< /alert >}}

## Публичный API и изменение, несовместимое с предыдущими версиями

Все общедоступные типы из пространства имен GroupDocs.Comparison:

1. Перемещены в пространство имен **GroupDocs.Comparison.Legacy**.
2. Помечен как **Устаревший** с сообщением: *Этот интерфейс/класс/перечисление устарели и будут доступны до января 2020 г. (v20.1).*

#### Полный список типов, которые были перемещены и помечены как устаревшие:

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

