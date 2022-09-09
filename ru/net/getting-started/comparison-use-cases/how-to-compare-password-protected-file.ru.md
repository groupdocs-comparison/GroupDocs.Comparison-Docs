---
id: как сравнить файлы, защищенные паролем
url: comparison/net/how-to-compare-password-protected-files
title: "Как сравнить файлы, защищенные паролем"
weight: 1
description: "Прочтите эту статью и узнайте, как можно использовать GroupDocs.Comparison для .NET для поиска различий в файлах, защищенных паролем."
keywords: "Как сравнить файлы, защищенные паролем, файлы, защищенные паролем, Сравнить файлы, защищенные паролем"
productName: GroupDocs.Comparison для .NET
hideChildren: False
---
Иногда при работе с документами может понадобиться получить результат сравнения файлов, в котором один или даже оба файла защищены паролем, и именно на этот случай есть возможность сравнивать файлы несмотря на то, что они защищены. Эта опция позволяет сравнивать защищенные файлы в любом формате, где есть возможность установить пароль для файла.

![](/comparison/net/images/how-to-compare-password-protected-files-1.png)

Пример кода для сравнения двух файлов, защищенных паролем:

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
В результате получаем результирующий файл сравнения двух файлов, защищенных паролем.

## Дополнительные ресурсы
### Темы для продвинутого использования
Чтобы узнать больше о функциях сравнения документов, обратитесь к [разделу расширенного использования]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
    

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой .NET мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с бесплатным онлайн-приложением для сравнения GroupDocs (https://products.groupdocs.app/comparison). ).

