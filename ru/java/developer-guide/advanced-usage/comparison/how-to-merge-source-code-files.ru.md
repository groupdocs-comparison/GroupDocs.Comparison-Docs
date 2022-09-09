---
id: как объединить файлы исходного кода
url: comparison/java/how-to-merge-source-code-files
title: "Как объединить файлы исходного кода"
weight: 8
description: "В этой статье объясняется, как управлять объединением файлов в GroupDocs.Comparison для Java."
keywords: "Объединение документов, сравнение документов, сравнение документов, сравнение файлов"
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
название: Как объединить файлы исходного кода
        description: "Узнайте, как объединить файлы исходного кода с помощью сравнения"
шаги:
- название: Сравнить документы
текст: Сравните исходный и целевой документы, как обычно
- имя: Получить обнаруженные изменения
текст: используйте метод «getChanges()» объекта «Comparer» для доступа ко всем обнаруженным изменениям.
- имя: принять или отклонить каждое изменение
текст: используйте метод setComparisonAction(), чтобы принять или отклонить каждое изменение, используя константы ComparisonAction.ACCEPT и ComparisonAction.REJECT.
- имя: Объединить файлы исходного кода
текст: используйте метод 'applyChanges()' объекта сравнения, передающий объект 'ApplyChangeOptions' с изменениями, чтобы применить изменения
---

***

[**GroupDocs.Comparison for Java**](https://products.groupdocs.com/comparison/java) предоставляет возможность объединять файлы исходного кода с помощью [ComparisonAction](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction):

* [ComparisonAction.ACCEPT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) принимает найденные изменения и добавляет их в файл без выделения;
* [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) отменяет найденные изменения и удаляет их из файла результатов.

Ниже приведены шаги для применения/отклонения изменений в результирующем файле.

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому документу или потоку;
* Вызов метода [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare());
* Вызвать метод [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) и получить список обнаруженных изменений;
* Установите [ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) объекта необходимых изменений на [ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) или [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) ценность;
* Вызов метода [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.io.OutputStream,%20com.groupdocs.comparison.options.ApplyChangeOptions)) и передать в него сбор изменений.

## Пример слияния файла исходного кода с использованием GroupDocs.Comparison

---

Например, вам нужно сравнить и объединить несколько версий файлов исходного кода, и вам нужно принять или отклонить изменения, сделанные разными людьми.

![](/comparison/java/images/how-to-merge-source-code-file-source.png)
![](/comparison/java/images/how-to-merge-source-code-file-target.png)

Различия показывают, что в файле **source.cs** записаны два метода: *AddNumbers* и *Sum*.

Если вы не использовали ComparisonAction, то в результирующем файле будут зафиксированы все изменения, и эти методы будут удалены, но если вам нужно контролировать слияние файлов, то [ComparisonAction](https://apireference.groupdocs. com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) поможет вам в этом.

## Пример использования ComparisonAction

---

В следующих примерах кода показано, как объединить два файла исходного кода.

<script src="https://gist.github.com/groupdocs-comparison-gists/0eada62d9c41ac852ad8ff18951e8abc.js"></script>

## Результат объединения файлов

---

В результате мы получаем объединенный файл исходного кода, где удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font> .

Также вы получите файл в формате HTML с измененными местами в коде.

| Файл исходного кода результата | Результирующий HTML-файл |
|------------------------------------------------- ------------------------|--------------------------------------- -------------------------------------------------- |
| ![](сравнение/java/изображения/как-объединить-исходный-код-файл-результат-CS.png) | ![](/comparison/java/images/how-to-merge-source-code-file-result-HTML.png) |

Как видно из полученных файлов, из двух методов был удален только один.

## Дополнительные ресурсы

---
### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:

* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)
* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)
* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)
* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    


### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java мы предоставляем простые, но мощные бесплатные приложения.
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSGand other documents with free to use online **[GroupDocs Comparison App](https://products.groupdocs.app/comparison)**.
