---
id: получить только сводную страницу
url: comparison/net/get-only-summary-page
title: "Получить только сводную страницу"
weight: 9
description: "В этой статье объясняется, как получить только сводную страницу при сравнении документов с помощью GroupDocs.Comparison для .NET."
keywords: "Сравнение документов, сводная страница, SummaryPage, ShowOnlySummaryPage"
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
имя: Как получить только сводную страницу в .NET
      description: "Узнайте, как получить только сводную страницу в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и укажите ShowOnlySummaryPage истинного значения.
- название: Сравнить документы
text: вызовите метод Compare вашего объекта.
- name: Создать массив для изменений файлов
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и параметр параметров сравнения.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет обнаруживать изменения между исходным и целевым файлами и отображать только сводную страницу.

Ниже приведены шаги, чтобы получить только сводную страницу:

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) и установите [ShowOnlySummaryPage](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/compareoptions/properties/showonlysummarypage) значение *true*;
* Вызовите метод [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) объект из предыдущего шага.

В следующем примере кода показано, как получить только сводную страницу.

## Пример блока кода для получения только сводной страницы

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
	comparer.Add(targetPath);
	CompareOptions options = new CompareOptions() {ShowOnlySummaryPage = true};
    comparer.Compare(resultPath, options);
}
```

## Дополнительные ресурсы

---

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
