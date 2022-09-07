---
id: принять или отклонить обнаруженные изменения
url: comparison/net/accept-or-reject-detected-changes
title: "Принять или отклонить обнаруженные изменения"
weight: 1
description: "Следуя этому руководству, вы узнаете, как применять или отменять изменения, обнаруженные в процессе сравнения документов, с помощью GroupDocs.Comparison for .NET API."
keywords: "Применить изменения к сравниваемому документу, отклонить изменения сравнения, изменения сравнения документов"
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
name: Как принять или отклонить обнаруженные изменения в .NET
      description: "Узнайте, как принимать или отклонять обнаруженные изменения в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает путь к исходному файлу или параметр потока исходного файла. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret или потоку файлов tagret, используя метод Add.
- имя: Сравнить файлы
текст: вызовите метод Compare вашего объекта без параметров.
- name: Создать массив для изменений файлов
текст: вызовите метод GetChanges для объекта Comparer и присвойте результат массиву типа ChangeInfo.
- имя: Отклонить или принять изменения
текст: Чтобы отклонить или принять изменения, откройте поле ComparisonAction элемента массива и установите значение Reject или Accept из перечисления ComparisonAction.
- имя: Применить изменения
текст: Чтобы применить изменения, вызовите метод ApplyChanges объекта класса Comparer. Метод принимает параметр файлового потока результирующего файла и объект класса ApplyChangeOptions, который должен содержать массив ChangeInfo.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет возможность применять или отменять определенные изменения между исходным и целевым документами и сохранять результирующий документ с выбранными изменениями (или без них).
Ниже приведены шаги для применения/отклонения изменений в результирующем документе.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому документу или потоку;
* Вызов метода [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index);
* Вызовите метод [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) и получите список обнаруженных изменений;
* Установите [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) необходимого объекта изменения на [ComparisonAction.Accept](https://apireference.groupdocs .com/net/comparison/groupdocs.comparison.result/comparisonaction) или значение [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction);
* Вызвать метод [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) и передать ему коллекцию изменений.

Класс [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions):

* [Изменения](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions/properties/changes) - Список изменений, которые должны быть применены (или нет) к результирующему документу;
* [SaveOriginalState](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions/properties/saveoriginalstate) — сохранить исходное состояние сравниваемого результата после применения изменений.

В следующем примере кода показано, как принять или отклонить обнаруженные изменения.

## Принять или отклонить изменения для документов, хранящихся на локальном диске

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges(File.Create("result.docx"), new SaveOptions(), new ApplyChangeOptions() { Changes = changes });
}
```

## Принять или отклонить изменения для документов, предоставленных в виде потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
    comparer.Compare(new SaveOptions(), new CompareOptions());
    ChangeInfo[] changes = comparer.GetChanges(new GetChangeOptions());
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges(File.Create("result.docx"), new SaveOptions(), new ApplyChangeOptions() { Changes = changes });
}
```

## В следующем примере кода показано, как принять/отклонить обнаруженные изменения с помощью параметра SaveOriginalState.

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject;
    comparer.ApplyChanges("resultWithRejectedChange.docx", new ApplyChangeOptions() { Changes = changes, SaveOriginalState = true });
    changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Accept;
    comparer.ApplyChanges("resultWithAcceptedChange.docx", new ApplyChangeOptions() { Changes = changes });
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
