---
id: загрузить файл с локального диска
url: comparison/net/load-file-from-local-disk
title: "Загрузить файл с локального диска"
weight: 1
description: "В этой статье объясняется, как загружать документы PDF, Word, Excel, PowerPoint с локального диска при использовании GroupDocs.Comparison для .NET."
keywords: "Загрузить документ с локального диска, Загрузить документ из пути к файлу, Загрузить документ с помощью GroupDocs.Comparison"
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
название: Как загрузить файл с локального диска в .NET
    description: "Узнайте, как загрузить файл с локального диска в .NET шаг за шагом"
шаги:
- имя: Создать строковую переменную с путем к файлу
text: Создайте строковую переменную с путем к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Создать объект и загрузить исходный файл
text: Создать объект и загрузить исходный файл, указав в параметре строковую переменную.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
Когда исходный файл находится на локальном диске, **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет загрузить его через [Comparer](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/comparer) конструктор класса, указывающий абсолютный или относительный путь к нему. Для загрузки целевого файла, расположенного на локальном диске, вы должны использовать метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index), который принимает абсолютный или относительный путь как параметр.

Следующий фрагмент кода показывает, как загружать файлы с локального диска.

```csharp
string sourcePath = "source.docx";
using (Comparer comparer = new Comparer(sourcePath))
{
	string targetPath = "target.docx";
    comparer.Add("targetPath");
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
You are welcome to compare your DOC or DOCX, XLS or XLSX, PPT or PPTX, PDF, EML, EMLX, MSG and other documents with free to use online [GroupDocs Comparison App](https://products.groupdocs.app/comparison).
