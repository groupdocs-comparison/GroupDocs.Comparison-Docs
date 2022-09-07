---
id: предварительный просмотр страниц-документов
url: comparison/net/generate-document-pages-preview
title: "Создание предварительного просмотра страниц документа"
weight: 4
description: "Следуя этому руководству, вы научитесь создавать эскизы документов PDF, Word, Excel, PowerPoint и просматривать страницы документов с помощью API GroupDocs.Comparison для .NET."
keywords: "Предварительный просмотр документа, предварительный просмотр страниц документа, страницы документа в формате PNG, страницы документа в формате JPG"
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
название: Как создать предварительный просмотр страниц документа в .NET
    description: "Узнайте, как шаг за шагом создавать предварительный просмотр страниц документа в .NET."
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Сравнить файлы
текст: вызовите метод Compare вашего объекта без параметров.
- название: Создать объект настроек
текст: Создайте объект класса PreviewOptions и инициализируйте его необходимыми параметрами.
- имя: Создать предварительный просмотр для исходного или целевого документа
текст: Вызвать метод GeneratePreview необходимого документа объекта Comparer.
- имя: Создать предварительный просмотр результирующего документа
текст: Создайте объект класса Document. Конструктор принимает параметр потока файла результата. Вызовите метод GeneratePreview с параметром PreviewOptions.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет создавать предварительные просмотры страниц для исходного, целевого и результирующего документа(ов) с помощью [GeneratePreview](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) класса [Document](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/document).

Класс [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions) используется для управления процессом создания предварительного просмотра — укажите желаемые номера страниц, формат изображения и т. д.

Ниже приведены шаги для создания предварительного просмотра документа с помощью API GroupDocs.Comparison:
* Создать новый экземпляр класса [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) и передать путь к исходному документу в качестве параметра конструктора;
* Добавить целевой документ(ы) для сравнения с помощью метода [Добавить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index);
* [Источник](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/source) и [Цели](https://apireference.groupdocs.com/net/comparison/groupdocs. compare/comparer/properties/targets) свойства объекта [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) позволяют получить доступ к исходным и целевым документам и предоставляют [GeneratePreview](https: //apireference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview);
* Создайте экземпляр объекта [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions):
* делегировать создание каждого страничного потока (см. обработчик события CreatePageStream);
* формат предварительного просмотра изображения - PNG/JPG/BMP;
* номера страниц для обработки;
* нестандартный размер изображений для предварительного просмотра (при необходимости).
{{< alert style="info" >}}Поток, созданный делегатом [CreatePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream), будет удаляется автоматически один раз после создания изображения для предварительного просмотра. Если вам нужно реализовать настраиваемый поток предварительного просмотра изображений, вам необходимо передать дополнительный аргумент [ReleasePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) для очистки ресурсов. .{{< /предупреждение >}}
* Вызовите [GeneratePreview](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/document/methods/generatepreview) метод [Source](https://apireference.groupdocs.com/net/comparison/ groupdocs.comparison/comparer/properties/source) и [Targets](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/properties/targets) документируют и передают [PreviewOptions](https:// apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions).

Вот основные свойства класса [PreviewOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions):
* [CreatePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/createpagestream) — делегат, определяющий метод создания потока предварительного просмотра выходной страницы;
* [ReleasePageStream](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/fields/releasepagestream) — делегат, определяющий метод удаления потока предварительного просмотра выходной страницы. Это можно использовать, когда требуется расширенный контроль над обработкой ресурсов.
* [Ширина] (https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/width) — ширина изображения предварительного просмотра. Это свойство используется, когда необходимо настроить ширину выходного изображения;
* [Высота](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/height) — высота предварительного просмотра изображения. Это свойство используется, когда необходимо настроить высоту выходного изображения;
* [PageNumbers](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/pagenumbers) — номера страниц, которые будут просматриваться;
* [PreviewFormat](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/previewoptions/properties/previewformat) — получает или задает формат изображения предварительного просмотра, который позволяет выбирать между качеством и размером изображения. Формат **BMP** следует использовать для обеспечения наилучшего качества изображения. Формат **JPG** будет полезен в случае строгих требований к размеру изображения - он дает наименьший размер изображения (и более быструю загрузку превью изображений), но с более низким качеством, чем **BMP**. По умолчанию выбран формат **PNG** — золотая середина между качеством изображения и размером.

В следующем фрагменте кода показано, как создавать предварительные просмотры документов.

## Получить превью страниц для исходного документа

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Source.GeneratePreview(previewOptions);
}
```

## Получить предварительный просмотр страниц для целевого документа

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    comparer.Targets[0].GeneratePreview(previewOptions);
}
```

## Получить предварительный просмотр страниц для результирующего документа

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    document.GeneratePreview(previewOptions);
}
```

## Установите определенный размер для изображений предварительного просмотра

В некоторых случаях может быть полезно задать определенный размер изображения при создании предварительного просмотра страниц документа. Например, для создания эскизов страниц документа — небольших изображений, представляющих собой сжатое изображение для предварительного просмотра исходного изображения, которое используется в качестве заполнителя. Основным преимуществом таких миниатюрных изображений является уменьшенный размер файла по сравнению с исходным изображением страницы.

В следующем фрагменте кода показано, как задать определенный размер для изображений предварительного просмотра.

```csharp
using (Comparer comparer = new Comparer("source.pptx"))
{
	comparer.Add("target.pptx");
    comparer.Compare("result.pptx");
    Document document = new Document(File.OpenRead("result.pptx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    previewOptions.Height = 1000;
    previewOptions.Width = 1000;
    document.GeneratePreview(previewOptions);
}
```

{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция пока не поддерживается для документов WordProcessing.{{< /alert >}}

## Получите превью страниц с ручной очисткой ресурсов

По умолчанию после генерации и рендеринга страницы документа превью потока изображения будет немедленно удалено. Однако есть возможность реализовать пользовательский метод для обработки этой операции.

```csharp
// Method should match with ReleasePageStream delegate signature
private void UserReleaseStreamMethod(int pageNumber, Stream stream)
{
	Console.WriteLine($"Releasing memory for page: {pageNumber}");
    stream.Close();
}
 
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    comparer.Compare("result.docx");
    Document document = new Document(File.OpenRead("result.docx"));
    PreviewOptions previewOptions = new PreviewOptions(pageNumber =>
    {
    	var pagePath = Path.Combine("C:\", $"result_{pageNumber}.png");
        return File.Create(pagePath);
    });
    previewOptions.PreviewFormat = PreviewFormats.PNG;
    previewOptions.PageNumbers = new int[] { 1, 2 };
    // here we set delegate target method
    previewOptions.ReleasePageStream = UserReleaseStreamMethod;
    document.GeneratePreview(previewOptions);
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

