---
id: сравнение переменных и свойств документа
url: comparison/net/compare-of-variables-and-document-properties
title: "Сравнение переменных и свойств документа"
weight: 11
description: "В этой статье объясняется, как активировать сравнение свойств документов в GroupDocs.Comparison для .NET."
keywords: "свойства переменных, встроенные свойства, настраиваемые свойства, сравнение свойств документа, CompareVariableProperty, CompareDocumentProperty"
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
имя: Как использовать переменные и документировать свойства в .NET
      description: "Узнайте, как шаг за шагом сравнивать документы свойств переменных и документов в .NET."
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret, используя метод Add
- имя: Укажите необходимые настройки
текст: создайте объект параметров и укажите для CompareVariableProperty и CompareDocumentProperty значение true.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---

***

**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет сравнивать различные свойства документа WORD, такие как *Переменные*, *Встроенные* и *Пользовательские* свойства.

Следующие поля класса CompareOptions используются для включения функций сравнения свойств документа:

* [CompareVariableProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparevariableproperty) - активировать сравнение *переменных* свойств;
* [CompareDocumentProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) — для активации сравнения *встроенных* и *настраиваемых* свойств.

Ниже приведены шаги для активации свойств сравнения документов:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) с путем к исходному файлу или потоком;
* Вызовите метод [Add](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому файлу или поток;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions) и установите [CompareVariableProperty](https://apireference.groupdocs.com/comparison/net/groupdocs .comparison.options/compareoptions/properties/comparevariableproperty) на *true* ([CompareDocumentProperty](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/compareoptions/properties/comparedocumentproperty) на *true * для *встроенных* и *настраиваемых* свойств);
* Вызовите метод [Comparer](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison .options/compareoptions) объект из предыдущего шага.

## Пример блока кода для активации сравнения переменных, встроенных и пользовательских свойств

---

```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    CompareOptions options = new CompareOptions();
    options.CompareVariableProperty = true; // to activate the comparison of variable properties
    options.CompareDocumentProperty = true; // to activate the comparison of built and custom properties
     

    comparer.Compare(resultPath, options);
}
```

## Результат сравнения свойств

---

Результат сравнения свойств представлен на отдельной странице - *Сводная страница свойств*.

![](comparison/net/images/properties-summary-page.png)

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
