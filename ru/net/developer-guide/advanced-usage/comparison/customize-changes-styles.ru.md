---
id: настроить-изменить-стили
url: comparison/net/customize-changes-styles
title: "Настройка стилей изменений"
weight: 4
description: "Следуя этому руководству, вы узнаете, как настроить отчет о сравнении документов и изменить внешний вид обнаруженных изменений при использовании GroupDocs.Comparison для .NET."
keywords: "Обнаружение изменения стиля, сравнение стилей документов, сравнение документов"
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
название: Как настроить стили изменений в .NET
      description: "Узнайте, как шаг за шагом настраивать стили изменений в .NET."
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret, используя метод Add
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и инициализируйте параметры InsertedItemStyle, DeletedItemStyle, ChangedItemStyle по объекту с требуемыми параметрами.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) предоставляет параметры сравнения, установленные с некоторыми значениями по умолчанию, которые обеспечивают соответствующую скорость и качество сравнения. Однако можно настроить параметры сравнения из широкого диапазона параметров и их значений для удовлетворения некоторых конкретных потребностей. Пример ниже демонстрирует, как изменить стили различных типов изменений.

Ниже приведены шаги для сравнения двух документов с пользовательскими настройками стиля изменения:

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создать объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) с нужными параметрами;
* Вызовите метод Compare и передайте методу объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions).

В следующем фрагменте кода показано, как сравнивать документы с определенными параметрами.

## Сравните документы с локального диска с пользовательскими стилями изменений

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
	CompareOptions compareOptions = new CompareOptions()
	{
    	InsertedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		DeletedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		ChangedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        }
	};
comparer.Compare("result.docx", compareOptions);
}
```

## Сравните документы из потока с пользовательскими стилями изменений

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx")))
{
	comparer.Add(File.OpenRead("target.docx"));
	CompareOptions compareOptions = new CompareOptions()
	{
    	InsertedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Red,
            FontColor = System.Drawing.Color.Green,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		DeletedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Azure,
            FontColor = System.Drawing.Color.Brown,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        },
		ChangedItemStyle = new StyleSettings()
        {
        	HighlightColor = System.Drawing.Color.Crimson,
            FontColor = System.Drawing.Color.Firebrick,
            IsUnderline = true,
			IsBold = true,
			IsStrikethrough = true,
			IsItalic = true
        }
	};
comparer.Compare(File.Create("result.docx"), compareOptions);
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
