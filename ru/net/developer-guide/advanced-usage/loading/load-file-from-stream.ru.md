---
id: загрузить файл из потока
url: comparison/net/load-file-from-stream
title: "Загрузить файл из потока"
weight: 2
description: "В этой статье объясняется, как загружать документы PDF, Word, Excel, PowerPoint из потока при использовании GroupDocs.Comparison для .NET."
keywords: "Загрузить документ из потока, Загрузить документ с помощью GroupDocs.Comparison"
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
имя: Как загрузить файл из потока в .NET
    description: "Узнайте, как загрузить файл из потока в .NET шаг за шагом"
шаги:
- имя: Создать объект и указать исходный файловый поток
текст: Создайте объект класса Comparer. Конструктор принимает поток исходного файла. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте поток файлов tagret с помощью метода Add.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите полученный файловый поток.
---
В случае, когда у вас есть файл в виде потока. Чтобы избежать накладных расходов, связанных с сохранением потока в виде файла на диске, **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** предоставляет способ работы непосредственно с потоками файлов.

Ниже приведены шаги, которые необходимо выполнить:
* Получить файловый поток;
* Передайте открытый исходный файловый поток в конструктор класса [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) или передайте открытый целевой файловый поток в [Add](https://apireference. groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index).
    



Следующий фрагмент кода описывает, как загрузить файл из потока.

```csharp
using (Stream sourceStream = File.OpenRead("source.docx"))
using (Stream targetStream = File.OpenRead("target.docx"))
{
	using (Comparer comparer = new Comparer(sourceStream))
	{
	    comparer.Add(targetStream);
    	comparer.Compare(File.Create("result.docx"));
	}
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
