---
id: принять или отклонить изменения
url: comparison/java/accept-or-reject-revisions
title: "Принять или отклонить изменения"
weight: 4
description: "Следуя этому руководству, вы узнаете, как применять или отбрасывать редакции, обнаруженные при сравнении документов, с помощью встроенных функций Microsoft Word."
keywords: "Редактирование, обработка редакций, принятие или отклонение редакций, применение изменений для редакций"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: Инструмент сравнения документов
        description: "Продукт позволяет сравнивать Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code и многие другие форматы файлов. API сравнения также поддерживает принятие или отклонение изменений, извлечение информации о документе и создание отчета о сравнении."
код продукта: сравнение
Платформа продукта: Java
как:
name: Как принять или отклонить изменения
        description: "Узнайте, как принять или отклонить изменения"
шаги:
- имя: Создать объект «RevisionHandler»
текст: создать объект класса «RevisionHandler», передав исходный документ в качестве аргумента конструктора.
- name: Получить список ревизий
текст: используйте метод getRevisions() для получения списка ревизий
- имя: проверьте тип каждой версии и примените требуемое действие
текст: проверьте типы ревизий с помощью метода getType(), который возвращает одно из значений RevisionType.*, и примените требуемое действие с помощью метода setAction(RevisionAction.Accept)
- имя: Создать объект класса «ApplyRevisionOptions»
текст: создайте экземпляр класса «ApplyRevisionOptions» и используйте его методы «setChanges (changesList)», чтобы внести изменения
- имя: Применить изменения редакции
текст: используйте метод 'applyRevisionChanges()' объекта 'RevisionHandler', передавая в качестве аргументов путь к результирующему документу и параметры редакции.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison)** предоставляет возможность получать версии из файла формата Docx, обрабатывать и сохранять результат обработки.
Ниже приведены шаги, чтобы *принять* изменения из документа, *принять/отклонить* изменения и *записать* результат обработки в окончательный файл.

* Создать объект [RevisionHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) с путем или потоком исходного документа;
* Вызвать метод [getRevisions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#getRevisions()) и получить список обнаруженных ревизий;
* Установите [Действие](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionInfo#setAction(com.groupdocs.comparison.words.revision.RevisionAction)) необходимого изменения объект [RevisionAction.Accept](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept) или [RevisionAction.Reject](https://apireference.groupdocs .com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject);
* Вызвать метод [applyRevisionChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions)) которому нужно передать только что созданный экземпляр объекта [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) и передать ему путь или поток итогового документа, собирая изменения в редакциях.

Также можно обрабатывать все изменения вместе, применяя одно действие для всех изменений. Ниже приведены шаги для обработки всех изменений:
* Создать объект [RevisionHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler) с путем или потоком исходного документа;
* Вызовите метод [applyRevisionChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionHandler#applyRevisionChanges(com.groupdocs.comparison.words.revision.ApplyRevisionOptions)) которому необходимо передать только что созданный экземпляр объекта [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions) и передать ему действие ([ RevisionAction.Accept](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction#Accept), [RevisionAction.Reject](https://apireference.groupdocs.com/ сравнение/java/com.groupdocs.comparison.words.revision/RevisionAction#Reject) или [RevisionAction.None](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/RevisionAction #None)) будет применяться ко всем версиям.

Класс [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions):
* [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getChanges()) — Список изменений редакции, которые необходимо применить к итоговому документу.
* [CommonHandler](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions#getCommonHandler()) — свойство, позволяющее определить одно действие для обработки всех изменений.

Если вы не передадите путь или файл к результирующему документу методу [ApplyRevisionOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/ApplyRevisionOptions), изменения быть записаны в тот же файл, из которого были взяты ревизии.

В следующем примере кода показано, как получить версии из документа, принять или отклонить обнаруженные версии и сохранить изменения в результирующем документе.

## Принять или отклонить изменения с локального диска

<script src="https://gist.github.com/groupdocs-comparison-gists/959d27303cb17b3f1c026ca018626137.js"></script>

## Принять или отклонить изменения из потока

<script src="https://gist.github.com/groupdocs-comparison-gists/4e175bc335e86438f4dc6e742e8b4c57.js"></script>

## Принять или отклонить все изменения

<script src="https://gist.github.com/groupdocs-comparison-gists/f66fbdb53c66bd82c03d5697d47bf9d0.js"></script>

## Результат обработки ревизии
Ниже приведены исходные и выходные файлы, основанные на коде, представленном ранее.

| Исходный файл | Файл результатов |
|--------------------------------------------------------------|- -------------------------------------------------- ---|
| ![](сравнение/java/images/revision-file.png) | ![](сравнение/java/изображения/result-revision-file.png) |

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
Наряду с полнофункциональной библиотекой Java мы предоставляем простые, но мощные бесплатные приложения.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
