---
id: как сравнить файлы исходного кода
url: comparison/java/how-to-compare-source-code-files
title: "Как сравнить файлы исходного кода"
weight: 6
description: "В этой статье описывается, как можно сравнивать файлы программирования и объединять их в один файл с внесенными или отмененными изменениями. GroupDocs.Comparison for Java предоставляет возможность поиска отличий в таких файлах как: CS, Java, Python, C++, Ruby и других"
keywords: "Сравните файлы cs, сравните файлы java, объедините документы"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: код отличается
        description: "Продукт позволяет сравнивать код"
код продукта: сравнение
Платформа продукта: Java
как:
имя:
        description: "Узнайте, как сравнивать код в проекте Java или Kotlin."
шаги:
- имя: Загрузить файл исходного кода
текст: создать экземпляр класса Comparer, передав файл исходного кода в качестве параметра конструктора.
- имя: Загрузить файлы целевого кода
текст: добавьте один или несколько целевых файлов кода, чтобы сравнить их с исходным
- имя: Сравните файлы исходного и целевого кода
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---

***

Существует множество инструментов сравнения, которые позволяют нескольким пользователям эффективно управлять своими изменениями, принимать или отклонять их при совместной работе над исходным кодом, написанным на CSharp, Java, Python, Ruby и других языках программирования. Большая часть таких инструментов — это настольные приложения, бесплатные или платные, предоставляющие мощный набор функций, имеющие свои плюсы и минусы, но все они предполагают, что вы будете сравнивать файлы вручную.

Давайте рассмотрим распространенный случай, когда вам нужно просмотреть две версии файла исходного кода C# (CSharp), отредактированного двумя разными людьми, и выбрать правильный вариант для каждого редактируемого блока кода. Пожалуйста, проверьте файлы source.cs и target.cs, которые мы собираемся сравнить, на изображении ниже.

![](/comparison/java/images/how-to-compare-source-code-files1.png)

Как мы видим, между сравниваемыми файлами есть несколько различий:
* названия классов разные - *CropImage* vs *ImageCropTests*;
* Метод *Test1* отсутствует в файле *target.cs*;
* Путь к растровому изображению был изменен в *Test2* - *input.png* вместо *original.png*;
* Метод *Start* переименован в *Launch*, а также изменено его содержимое - удален вызов метода *Test1*;
* удалены некоторые пустые строки и т.д.

На изображении ниже показаны все упомянутые изменения, обнаруженные некоторыми инструментами сравнения настольных компьютеров. Он работает просто отлично, все различия обнаружены и выделены в пользовательском интерфейсе.

![](/comparison/java/images/how-to-compare-source-code-files2.png)

Однако иногда вам могут понадобиться некоторые функции, которые не предоставляют существующие инструменты сравнения, или вы хотите реализовать процесс сравнения по-своему. Тогда вам обязательно понадобится возможность программно сравнивать документы и управлять обнаруженными изменениями через код. Здесь на помощь придут функции **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison)**, поэтому давайте посмотрим, как сравнивать с ним файлы исходного кода.

## Сравните файлы CSharp, Java, C++, JavaScript, Python и Ruby с помощью GroupDocs.Comparison.
 

---

Используя **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison)** API, вы можете сравнить два или более файла исходного кода, обнаружить различия между ними, а затем решить, что делать с каждым обнаруженным изменением. - принять или отклонить его перед сохранением результирующего документа, создать HTML-отчет с результатами сравнения и т. д.

Как правило, для сравнения двух файлов исходного кода необходимо выполнить следующие действия (см. список других поддерживаемых форматов [здесь] (https://wiki.lisbon.dynabic.com/display/comparison/Supported+File+Formats)):

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь к целевому документу или потоку;
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare()) и выполните сравнение файлов.

На этом этапе вы можете сохранить отчет о сравнении в формате HTML и просмотреть его. Если вам необходимо программно получить набор обнаруженных изменений для дальнейшей обработки, вам необходимо:

* Вызвать метод [getChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getChanges()) и получить список обнаруженных изменений;
* Установите [ComparisonAction](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction) объекта необходимых изменений на [ComparisonAction.ACCEPT](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.result/ComparisonAction#ACCEPT) или [ComparisonAction.REJECT](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/ComparisonAction#REJECT) ценность;
* Создать объект [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/ApplyChangeOptions), который содержит список изменений, которые должны быть применены (или отклонены) к результирующему документу;
* Вызов [applyChanges](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#applyChanges(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,% 20com.groupdocs.comparison.options.ApplyChangeOptions)) и сохраните документ.

Вы можете узнать больше о свойстве ComparisonAction [здесь](https://wiki.lisbon.dynabic.com/display/comparison/How+to+merge+source+code+files).

В следующих примерах кода показано, как сравнить два файла CS и принять или отклонить обнаруженные изменения в определенном диапазоне.

<script src="https://gist.github.com/groupdocs-comparison-gists/a7fa2bad5b8034df93e8e68d3cba83fc.js"></script>

В результате мы получаем объединенный CS-файл, где удаленные элементы отмечены <font color="red">красным цветом</font> , добавленные — <font color="blue">синим</font> , а измененные — <font color="green">зеленым</font> .

Также вы получите файл в формате HTML с измененными местами в коде.

| Результирующий HTML-файл | Результирующий HTML-файл с использованием свойства ComparisonAction |
|------------------------------------------------- -------------------------|------------------------ -------------------------------------------------- |
| ![](/comparison/java/images/how-to-compare-source-code-files_result1.png) | ![](/comparison/java/images/how-to-compare-source-code-files_result2.png) |

## Дополнительные ресурсы

---

### Темы для продвинутого использования
Чтобы узнать больше о функциях сравнения документов, обратитесь к [разделу расширенного использования]({{< ref "comparison/java/developer-guide/advanced-usage/_index.md" >}}).

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
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие документы с помощью бесплатного онлайн-приложения **[приложение для сравнения GroupDocs] (https://products.groupdocs.app/ сравнение)**.


