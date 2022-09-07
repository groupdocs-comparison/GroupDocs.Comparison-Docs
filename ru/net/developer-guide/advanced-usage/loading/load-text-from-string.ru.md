---
id: загрузить текст из строки
url: comparison/net/load-text-from-string
title: "Загрузить текст из строки"
weight: 5
description: "В этой статье объясняется, как загружать значения из переменных строкового типа при использовании GroupDocs.Comparison для .NET."
keywords: "Загрузить значения из переменных строкового типа, Загрузить текст с помощью GroupDocs.Comparison"
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
name: Как загрузить текст из строки в .NET
    description: "Узнайте, как загрузить файл из строки в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный текст
текст: Создайте объект класса Comparer. Конструктор берет исходный текст по первому параметру и объект LoadOption с параметром LoadText.
- имя: Загрузить целевой текст
текст: добавьте текст тагрета с помощью метода Add. Второй параметр — это объект LoadOption, который содержит LoadText = true.
- название: Сравнить документы
текст: создайте строковую переменную, в которую будет помещен результат сравнения.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет сравнивать значения переменных типа *string*.
Ниже приведены шаги для сравнения текста из переменных:

* Создайте объект [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) и установите [LoadText](https://apireference.groupdocs.com/comparison/net/groupdocs свойство .comparison.options/loadoptions/properties/loadtext) в *true* (это означает, что переданная строка содержит текст для сравнения, а не путь к файлу);
* Создайте экземпляр [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) *object* с исходной переменной типа *string* и [LoadOptions](https://apireference.groupdocs. com/net/comparison/groupdocs.comparison.options/loadoptions) *объект*, созданный на предыдущем шаге;
* Вызвать метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и указать целевую переменную типа *string* и [LoadOptions](https:/ /apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) *объект* создан на предыдущем шаге;
* Вызов метода [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer).
* Вызовите метод [GetResultString](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/getresultstring), чтобы получить строку с результатом сравнения.

В следующем фрагменте кода показано, как загружать значения из переменных:
```csharp
using (Comparer compare = new Comparer("source text", new LoadOptions() { LoadText = true }))
{
    compare.Add("target text", new LoadOptions() { LoadText = true });
    compare.Compare();
    string result = compare.GetResultString();
}
```
---

Также может сочетаться с различными способами передачи документов (будь то путь к файлу или поток), как показано в следующем примере кода:
```csharp
using (Stream sourceStream = File.OpenRead("./source.docx"))
{
    using (Comparer compare = new Comparer(sourceStream))
    {
        compare.Add("target text", new LoadOptions() { LoadText = true });
        compare.Compare();
        string result = compare.GetResultString();
        Console.WriteLine(result);
    }
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
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с бесплатным онлайн-приложением для сравнения GroupDocs (https://products.groupdocs.app/comparison). ).

