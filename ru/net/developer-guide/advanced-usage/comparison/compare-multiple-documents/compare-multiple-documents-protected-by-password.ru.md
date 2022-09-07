---
id: сравнить несколько документов, защищенных паролем
url: comparison/net/compare-multiple-documents-protected-by-password
title: "Сравните несколько документов, защищенных паролем"
weight: 1
description: "В этой статье описывается, как сравнить несколько документов Word или презентаций PowerPoint, защищенных паролем, с помощью GroupDocs.Comparison для .NET API."
keywords: "Сравните несколько защищенных паролем документов, сравните несколько защищенных документов"
productName: GroupDocs.Comparison для .NET
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Сравнение документов
      description: "Сравнивайте документы изначально с высокой производительностью, используя язык C# и GroupDocs.Comparison для .NET."
код продукта: сравнение
продуктПлатформа: чистая
показатьВидео: Правда
как:
название: Как сравнить несколько документов в .NET
      description: "Узнайте, как сравнить несколько документов в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает путь к исходному файлу или поток исходного файла по первому параметру и объект LoadOption по второму параметру, который содержит пароль. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевые файлы
текст: добавьте путь к файлам tagret, используя метод Add. Второй параметр — это объект LoadOption, содержащий пароль.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу.
---
{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция доступна только для документов Word, PowerPoint и презентаций Open Document.{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет сравнить более двух документов (в том числе защищенных паролем).

Ниже приведены шаги для сравнения документов, защищенных паролем.

* Создайте объект [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) и укажите пароль исходного документа;
* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа и [LoadOptions](https://apireference.groupdocs.com/net/ объект сравнения/groupdocs.comparison.options/loadoptions), созданный на предыдущем шаге;
* Создайте другой объект [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) и укажите пароль целевого документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа и [LoadOptions](https://apireference .groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions), созданный на предыдущем шаге. Повторите этот шаг для каждого целевого документа, защищенного паролем;
* Вызовите метод [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index).

В следующем примере кода показано, как сравнивать документы, защищенные паролем.

## Сравните несколько документов с локального диска

```csharp
using (Comparer comparer = new Comparer("source.docx", new LoadOptions() { Password = "1234" }))
{
	comparer.Add("target1.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target2.docx", new LoadOptions() { Password = "5678" });
    comparer.Add("target3.docx", new LoadOptions() { Password = "5678" });
    comparer.Compare("result.docx");
}
```

## Сравните несколько защищенных документов из потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"), new LoadOptions() { Password = "1234" }))
{
	comparer.Add(File.OpenRead("target1.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target2.docx"), new LoadOptions() { Password = "5678" });
    comparer.Add(File.OpenRead("target3.docx"), new LoadOptions() { Password = "5678" });
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
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с помощью бесплатного онлайн-приложения [приложение для сравнения GroupDocs] (https://products.groupdocs.app/comparison). ).

