---
id: предварительный просмотр страниц-документов
url: comparison/java/generate-document-pages-preview
title: "Создание предварительного просмотра страниц документа"
weight: 4
description: "Следуя этому руководству, вы научитесь создавать эскизы документов PDF, Word, Excel, PowerPoint и просматривать страницы документов с помощью GroupDocs.Comparison for Java API."
keywords: "Предварительный просмотр документа, предварительный просмотр страниц документа, страницы документа в формате PNG, страницы документа в формате JPG"
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
название: Как создать предварительный просмотр страниц документа
        description: "Узнайте, как создать предварительный просмотр страниц документа"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: Создать объект «CreatePageStream»
текст: Создайте класс, который будет расширять класс CreatePageStream, и создайте его экземпляр. Метод «public OutputStream invoke(int pageNumber)» будет вызываться для предоставления выходного потока для каждой страницы документа, чтобы изображения для предварительного просмотра сохранялись в этих потоках.
- имя: Создать «PreviewOptions»
текст: создать экземпляр класса PreviewOptions, передав объект потока создания страницы в качестве аргумента
- имя: настроить параметры предварительного просмотра
текст: обновить формат предварительного просмотра изображения с помощью метода setPreviewFormat(PreviewFormats.PNG) и номера страниц с помощью метода setPageNumbers(new int[]{1, 2})'
- имя: Получить исходный документ
текст: используйте метод getSource() для получения объекта исходного документа
- имя: Создание изображений для предварительного просмотра
текст: вызвать метод «generatePreview», передав параметры предварительного просмотра в качестве аргумента
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет создавать предварительные просмотры страниц для исходного, целевого и результирующего документа(ов) с помощью [generatePreview](https://apireference. groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) метод [Документ](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Document).

Класс [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) используется для управления процессом создания предварительного просмотра — укажите желаемые номера страниц, формат изображения и т. д.

Ниже приведены шаги для создания предварительного просмотра документа с помощью API GroupDocs.Comparison:

* Создайте новый экземпляр класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) и передайте путь к исходному документу в качестве параметра конструктора.
* Добавьте целевой документ(ы) для сравнения, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)).
* [Источник](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) и [Цели](https://apireference.groupdocs.com/comparison/java/ com.groupdocs.comparison/Comparer#getTargets()) свойства объекта [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) позволяют получить доступ к исходным и целевым документам и предоставляют [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) метод.
* Создайте объект [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions) с помощью:
* callback для создания каждого страничного потока (см. обработчик события CreatePageStream);
* формат предварительного просмотра изображения - PNG/JPG/BMP,
* номера страниц для обработки;
* нестандартный размер изображений для предварительного просмотра (при необходимости).

{{< предупреждение стиль="информация" >}}
Поток, созданный обратным вызовом [createPageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_CreatePageStream), будет удален автоматически один раз после создания предварительного изображения. Если вам нужно реализовать настраиваемый поток предварительного просмотра изображений, вам необходимо передать дополнительный аргумент [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.common.delegates/Delegates_ReleasePageStream) для очистки ресурсов. .
{{< /предупреждение >}}

* Вызовите метод [generatePreview](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Document#generatePreview(com.groupdocs.comparison.options.PreviewOptions)) [Source](https:/ /apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#getSource()) и [Цели](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer# getTargets()) и передайте в него [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions).
    




Вот основные свойства класса [PreviewOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions):
* [CreatePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setCreatePageStream(com.groupdocs.comparison.common.delegates.Delegates.CreatePageStream)) — обратный вызов, который определяет способ создания потока предварительного просмотра выходной страницы;

* [ReleasePageStream](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setReleasePageStream(com.groupdocs.comparison.common.delegates.Delegates.ReleasePageStream)) — обратный вызов, который определяет метод удаления потока предварительного просмотра выходной страницы. Это можно использовать, когда требуется расширенный контроль над обработкой ресурсов.

* [Width](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setWidth(int)) — ширина изображения предварительного просмотра. Это свойство используется, когда необходимо настроить ширину выходного изображения;

* [Высота](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setHeight(int)) — высота предварительного просмотра изображения. Это свойство используется, когда необходимо настроить высоту выходного изображения;

* PageNumbers - номера страниц, которые будут предварительно просмотрены;

* [PreviewFormat](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/PreviewOptions#setPreviewFormat(int)) — получает или задает формат изображения предварительного просмотра, который дает возможность выбирать качество изображения. и размер. ** Формат [BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP)** следует использовать для обеспечения наилучшего качества изображения. **[JPG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#JPEG)** формат будет полезен в случае жестких требований к размеру изображения - это создает наименьший размер изображения (и более быструю загрузку предварительного просмотра изображений), но с более низким качеством, чем **[BMP](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#BMP )**. По умолчанию выбран формат **[PNG](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PreviewFormats#PNG)**, который является золотой серединой между качеством изображения и размер.
    




В следующем фрагменте кода показано, как создавать предварительные просмотры документов.

## Получить превью страниц для исходного документа

<script src="https://gist.github.com/groupdocs-comparison-gists/74af4dca2cd81b3d14b5136fdd291f26.js"></script>

## Получить предварительный просмотр страниц для целевого документа

<script src="https://gist.github.com/groupdocs-comparison-gists/e34414e2945b837f57160900fa1e925b.js"></script>

## Получить предварительный просмотр страниц для результирующего документа

<script src="https://gist.github.com/groupdocs-comparison-gists/5da1f1afc204abe5d0212d68f77e6701.js"></script>

## Установите определенный размер для изображений предварительного просмотра

В некоторых случаях может быть полезно задать определенный размер изображения при создании предварительного просмотра страниц документа. Например, для создания эскизов страниц документа — небольших изображений, представляющих собой сжатое изображение для предварительного просмотра исходного изображения, которое используется в качестве заполнителя. Основным преимуществом таких миниатюрных изображений является уменьшенный размер файла по сравнению с исходным изображением страницы.

В следующем фрагменте кода показано, как задать определенный размер для изображений предварительного просмотра.

<script src="https://gist.github.com/groupdocs-comparison-gists/127ca350ae9fb6449f7fd2cdd1be32e0.js"></script>

{{< alert style="info" >}}NOTE: This feature is not supported for WordProcessing documents yet.{{< /предупреждение >}}

## Получите превью страниц с ручной очисткой ресурсов

По умолчанию после генерации и рендеринга страницы документа превью потока изображения будет немедленно удалено. Однако есть возможность реализовать пользовательский метод для обработки этой операции.

<script src="https://gist.github.com/groupdocs-comparison-gists/36201a68f984bd2840ccf577a823eb0f.js"></script>

## Дополнительные ресурсы

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
