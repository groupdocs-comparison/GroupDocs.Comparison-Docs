---
id: сравнить несколько документов
url: comparison/net/compare-multiple-documents
title: "Сравните несколько документов"
weight: 3
description: "Узнайте больше о том, как одновременно сравнивать несколько документов Word или презентаций PowerPoint с помощью GroupDocs.Comparison для .NET."
keywords: "Сравнение нескольких документов, многократное сравнение документов, сравнение более двух документов"
productName: GroupDocs.Comparison для .NET
hideChildren: True
структурированные данные:
шоуОрганизация: True
---
{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция доступна только для документов Word, PowerPoint и презентаций Open Document.{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет сравнить более двух документов.

Ниже приведены шаги для сравнения нескольких документов.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Добавить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа. Повторите этот шаг для каждого целевого документа;
* Вызовите метод [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index).

В следующем примере кода показано, как сравнить несколько документов с определенными параметрами.

## Сравните несколько документов с локального диска

```csharp
using (Comparer comparer = new Comparer("source.docx")
{
	comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
    comparer.Compare("result.docx");
}
```

## Сравните несколько документов из потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    comparer.Compare(File.Create("result.docx"));
}
```

## Дополнительные ресурсы

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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
