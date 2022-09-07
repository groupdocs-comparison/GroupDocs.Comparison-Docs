---
id: загрузить-защищенные-паролем-документы
url: comparison/net/load-password-protected-documents
title: "Загружать защищенные паролем документы"
weight: 3
description: "В этой статье объясняется, как загружать защищенные паролем документы PDF, Word, Excel, PowerPoint при использовании GroupDocs.Comparison для .NET."
keywords: "Загрузить защищенный паролем документ, Загрузить защищенный документ с помощью GroupDocs.Comparison"
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
- имя: Создать объект LoadOption
текст: Создайте объект LoadOption, который содержит параметры пароля.
- имя: Загрузить целевой файл
текст: добавьте путь к файлам tagret, используя метод Add. Второй параметр — это объект LoadOption, содержащий пароль.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите полученный файловый поток.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет сравнивать документы, защищенные паролем.
Ниже приведены шаги для сравнения документов, защищенных паролем.

* Создайте объект [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) и укажите пароль исходного документа;
* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа и [LoadOptions](https://apireference.groupdocs.com/net/ объект сравнения/groupdocs.comparison.options/loadoptions), созданный на предыдущем шаге;
* Создайте еще один объект [LoadOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) и укажите пароль целевого документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа и [LoadOptions](https://apireference .groupdocs.com/net/comparison/groupdocs.comparison.options/loadoptions) объект, созданный на предыдущем шаге;
* Вызов метода [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer).

В следующем примере кода показано, как сравнивать документы, защищенные паролем.

```csharp
LoadOptions sourceLoadOptions = new LoadOptions(){ Password = "1234" };
 
using (Comparer comparer = new Comparer("source.docx", sourceLoadOptions))
{
	LoadOptions targetLoadOptions =	new LoadOptions() { Password = "5678" };
    comparer.Add("target.docx", targetLoadOptions);
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

