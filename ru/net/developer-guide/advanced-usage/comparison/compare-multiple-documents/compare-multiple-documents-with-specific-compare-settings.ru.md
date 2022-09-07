---
id: сравнение-несколько-документов-с-конкретными-сравнительными-настройками
url: comparison/net/compare-multiple-documents-with-specific-compare-settings
title: "Сравните несколько документов с определенными настройками сравнения"
weight: 2
description: "Следуя этому руководству, вы узнаете, как сравнивать несколько документов с различными настройками — определение стиля, изменение уровня детализации сравнения и многое другое."
keywords: "Сравнение нескольких документов, обнаружение изменения стиля, множественное сравнение файлов"
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
имя: Как сравнить несколько документов с определенными настройками сравнения в .NET
      description: "Узнайте, как сравнивать несколько документов с определенными параметрами сравнения в .NET шаг за шагом."
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Укажите необходимые настройки
текст: Создайте объект параметров сравнения и укажите необходимые настройки.
- имя: Загрузить целевые файлы
текст: добавьте путь к файлам tagret, используя метод Add.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
{{< alert style="info" >}}ПРИМЕЧАНИЕ. Эта функция доступна только для документов Microsoft Word, Microsoft PowerPoint и презентаций Open Document.{{< /alert >}}

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет сравнить более двух документов и указать некоторые специальные параметры сравнения, такие как стиль для обнаруженных изменений, уровень детализации сравнения и т. д.

Ниже приведены шаги для сравнения нескольких документов с определенными параметрами.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Добавить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа. Повторите этот шаг для каждого целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) и укажите нужные параметры;
* Вызовите метод [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) объект из предыдущего шага.

В следующем примере кода показано, как сравнить несколько документов с определенными параметрами.

## Сравните несколько документов с определенными настройками сравнения с локального диска.

```csharp
using (Comparer comparer = new Comparer("source.docx")
{
	comparer.Add("target1.docx");
    comparer.Add("target2.docx");
    comparer.Add("target3.docx");
	CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
        }
    };
    comparer.Compare("result.docx", compareOptions);
}
```

## Сравните несколько документов с определенными настройками сравнения из потока

```csharp
using (Comparer comparer = new Comparer(File.OpenRead("source.docx"))
{
	comparer.Add(File.OpenRead("target1.docx"));
    comparer.Add(File.OpenRead("target2.docx"));
    comparer.Add(File.OpenRead("target3.docx"));
    CompareOptions compareOptions = new CompareOptions()
    {
    	InsertedItemStyle = new StyleSettings()
        {
        	FontColor = System.Drawing.Color.Yellow
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
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с бесплатным онлайн-приложением для сравнения GroupDocs (https://products.groupdocs.app/comparison). ).

