---
id: принять или отклонить изменения
url: comparison/net/accept-or-reject-revisions
title: "Принять или отклонить изменения"
weight: 4
description: "Следуя этому руководству, вы узнаете, как применять или отбрасывать редакции, обнаруженные при сравнении документов, с помощью встроенных функций Microsoft Word."
keywords: "Редактирование, обработка редакций, принятие или отклонение редакций, применение изменений для редакций"
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
name: Как принять или отклонить изменения в .NET
    description: "Узнайте, как принимать или отклонять изменения в .NET шаг за шагом"
шаги:
- имя: Создать объект
текст: Создайте объект класса RevisionHandler. Конструктор принимает путь к редакции или файловый поток редакции.
- имя: Получить ревизию
текст: вызовите метод GetRevisions объекта RevisionHandler и присвойте значение списку RevisionInfo.
- имя: Принять или отклонить ревизию
текст: Если тип элемента списка равен значению Insertion перечисления RevisionType, то значение Accept перечисления RevisionAction присваивается полю Action элемента.
- имя: Применить изменения редакции
текст: Чтобы применить изменения, вызовите метод ApplyRevisionChanges объекта RevisionHandler. Метод принимает параметр пути к результирующему файлу и объекту класса ApplyRevisionOptions, который должен содержать поле Changes, инициализированное списком RevisionInfo.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет возможность получать версии из файла формата Docx, обрабатывать и сохранять результат обработки.
Ниже приведены шаги, чтобы *принять* изменения из документа, *принять/отклонить* изменения и *записать* результат обработки в окончательный файл.

* Создать объект [RevisionHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) с путем или потоком исходного документа;
* Вызовите метод [GetRevisions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/getrevisions) и получите список обнаруженных ревизий;
* Установите [Действие](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisioninfo/properties/action) необходимого объекта изменения на [RevisionAction.Accept](https://apireference .groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) или [RevisionAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) ценность;
* Вызвать метод [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index), которому нужно передать только что созданный экземпляр объект [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) и передать ему путь или поток результирующего документа, собирая изменения в ревизиях.

Также можно обрабатывать все изменения вместе, применяя одно действие для всех изменений. Ниже приведены шаги для обработки всех изменений:
* Создать объект [RevisionHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler) с путем или потоком исходного документа;
* Вызвать метод [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges/index), которому нужно передать только что созданный экземпляр объект [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions) и передать ему действие ([RevisionAction.Accept](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.words.revision/revisionaction), [RevisionAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction) или [RevisionAction .None](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionaction)), который будет применяться ко всем редакциям.

Класс [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions):
* [Изменения](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/properties/changes) — Список изменений редакции, которые необходимо применить к итоговому документу.
* [CommonHandler](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/applyrevisionoptions/fields/commonhandler) — свойство, позволяющее определить одно действие для обработки всех изменений.

Если вы не передадите путь или файл к результирующему документу методу [ApplyRevisionChanges](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.words.revision/revisionhandler/methods/applyrevisionchanges), изменения будут записаны в тот же файл, из которого были взяты ревизии.

В следующем примере кода показано, как получить версии из документа, принять или отклонить обнаруженные версии и сохранить изменения в результирующем документе.

## Принять или отклонить изменения с локального диска

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## Принять или отклонить изменения из потока

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(File.OpenRead("Document_with_revision.docx")))
{
    List<RevisionInfo> revisionList = revisionHandler.GetRevisions();
    foreach (RevisionInfo revision in revisionList)
    {
        if (revision.Type == RevisionType.Insertion) revision.Action = RevisionAction.Accept;
    }
    revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { Changes = revisionList });
}
```

## Принять или отклонить все изменения

```csharp
using (RevisionHandler revisionHandler = new RevisionHandler(pathRevision + "Document_with_revision.docx"))
{
	revisionHandler.ApplyRevisionChanges(pathRevision + "result.docx", new ApplyRevisionOptions() { CommonHandler = RevisionAction.Accept });
}
```

## Результат обработки ревизии
Ниже приведены исходные и выходные файлы, основанные на коде, представленном ранее.

| Исходный файл | Файл результатов |
| --- | --- |
| ![](сравнение/net/images/revision-file.png) | ![](сравнение/net/images/result-revision-file.png) |

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

