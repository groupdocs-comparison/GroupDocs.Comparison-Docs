---
id: загрузить пользовательские шрифты
url: comparison/net/load-custom-fonts
title: "Загрузить пользовательские шрифты"
weight: 4
description: "В этой статье объясняется, как загружать пользовательские шрифты документов PDF, Word, Excel, PowerPoint при использовании GroupDocs.Comparison для .NET."
keywords: "Пользовательские шрифты, шрифты"
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
название: Как загрузить пользовательские шрифты в .NET
    description: "Узнайте, как шаг за шагом загружать пользовательские шрифты в .NET."
шаги:
- name: Создать объект и загрузить шрифт.
текст: Создайте объект класса LoadOptions. Получите доступ к полю объекта, используя метод Add с указанием пути к параметру файла шрифта.
- имя: Создать объект и загрузить исходный файл с параметрами
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу и объект LoadOptions. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет сравнивать документы, в содержании которых используются нестандартные шрифты.

Ниже приведены шаги для подключения пользовательских шрифтов и сравнения документов:

* Создать объект [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) и предоставить список каталогов для пользовательских шрифтов;
* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа и [LoadOptions](https://apireference.groupdocs.com/net/ объект сравнения/groupdocs.comparison.options/loadoptions), созданный на предыдущем шаге;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Вызов метода [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer).

В следующем примере кода показано, как подключить пользовательские шрифты и сравнить документы.

```csharp
// Instantiate the LoadOptions object and create a list of custom font directories.
LoadOptions loadOptions = new LoadOptions();
loadOptions.FontDirectories.Add("./fontPath/");
 
using (Comparer comparer = new Comparer("source.docx", loadOptions))
{
    comparer.Add("target.docx");
    comparer.Compare("result.docx");
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
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с помощью бесплатного онлайн-приложения [приложение для сравнения GroupDocs] (https://products.groupdocs.app/comparison). ).

