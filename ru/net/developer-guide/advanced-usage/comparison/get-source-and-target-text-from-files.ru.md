---
id: получить-исходный-и-целевой-текст-из-файлов
url: comparison/net/get-source-and-target-text-from-files
title: "Получить исходный и целевой текст из файлов"
weight: 7
description: "В этой статье объясняется, как получить исходный и целевой тексты конкретных изменений с помощью GroupDocs.Comparison для .NET."
keywords: "Получить целевой текст, получить исходный текст, сравнить документы, сравнить документы, сравнить файлы"
productName: GroupDocs.Comparison для .NET
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
Название: Сравнение документов
      description: "Сравнивайте документы изначально с высокой производительностью, используя язык C# и GroupDocs.Comparison для .NET."
код продукта: сравнение
продуктПлатформа: чистая
показатьВидео: правда
как:
name: Как получить исходный и целевой текст в .NET
      description: "Узнайте, как получить исходный и целевой текст в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает путь к исходному файлу или параметр потока исходного файла. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret или потоку файлов tagret, используя метод Add.
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и укажите для ExtendedSummaryPage истинное значение.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу.
- name: Создать массив для изменений файлов
текст: вызовите метод GetChanges для объекта Comparer и присвойте результат массиву типа ChangeInfo.
- name: вывод текста изменений
text: Отобразите исходный или целевой текст изменений, используя элемент массива информации об изменениях.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет получить исходный и целевой тексты конкретных изменений в файле результатов.

Ниже приведены шаги для получения списка измененных исходных и целевых текстов:

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Вызов метода [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare);
* Вызов метода [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges).

В следующем примере кода показано, как получить указанные тексты из файла.

## Получить целевой текст с локального диска

```csharp
using (Comparer comparer = new Comparer(sourceDocumentPath))
{
    comparer.Add(targetDocumentPath);
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
    }
}
```

## Получить целевой текст из потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
    comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(outputPath);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    {
        Console.WriteLine("");
        Console.WriteLine("Source text: " + change.SourceText);
        Console.WriteLine("Target text: " + change.TargetText);
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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
