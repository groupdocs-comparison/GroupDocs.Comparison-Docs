---
id: установить пароль для результирующего документа
url: comparison/net/set-password-for-resultant-document
title: "Установить пароль для результирующего документа"
weight: 2
description: "В этой статье объясняется, как установить пароль документа после сравнения файлов в приложениях .NET с помощью GroupDocs.Comparison для .NET."
keywords: "Сравните документ и защитите паролем"
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
name: Как установить метаданные документа при сохранении в .NET
    description: "Узнайте, как установить метаданные документа при сохранении в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Создать объект CompareOptions
текст: Создайте объект класса CompareOptions с параметром PasswordSaveOption, инициализированным значением перечисления PasswordSaveOption.
- имя: Создать объект SaveOptions
текст: Создайте объект класса SaveOptions с параметром Password.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу, объект SaveObject и объект CompareOption.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет защитить результирующий документ паролем.

Ниже приведены шаги для защиты результирующего документа:

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) с помощью [PasswordSaveOption](https://apireference.groupdocs.com/net/comparison/groupdocs. compare.options/compareoptions/properties/passwordsaveoption) = [PasswordSaveOption](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/passwordsaveoption).User;
* Создайте объект [SaveOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/saveoptions) и установите [Пароль](https://apireference.groupdocs.com/comparison/net/ groupdocs.comparison.options/saveoptions/properties/password) свойство желаемый пароль для результирующего документа;
* Вызовите метод [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index) и передайте [SaveOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/saveoptions) и [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) возражают против метода.

В следующем фрагменте кода показано, как сравнивать документы и защищать результирующий документ паролем.

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions cOptions = new CompareOptions
    {
     	PasswordSaveOption = PasswordSaveOption.User
    };
    SaveOptions sOptions = new SaveOptions()
    {
     	Password = "3333"
    };
    comparer.Compare("result.docx", sOptions, cOptions);
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

