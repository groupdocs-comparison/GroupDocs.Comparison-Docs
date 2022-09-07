---
id: получить-изменения-координаты
url: comparison/net/get-changes-coordinates
title: "Получить координаты изменений"
weight: 5
description: "В этой статье объясняется, как получить координаты обнаруженных изменений при предварительном просмотре страниц документа при сравнении документов с помощью GroupDocs.Comparison для .NET."
keywords: "Сравните документы, получите координаты изменений"
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
название: Как получить координаты изменений в .NET
      description: "Узнайте, как получить координаты изменений в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret, используя метод Add
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и укажите для CalculateCoordinates истинное значение.
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и укажите параметр параметров сравнения.
- name: Создать массив для изменений файлов
текст: вызовите метод GetChanges для объекта Comparer и присвойте результат массиву типа ChangeInfo.
- название: Выход меняет координаты
текст: Отображение информации об изменениях координат с помощью поля Box для каждого элемента информационного объекта изменений, а затем использование поля с именем координаты.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)** позволяет обнаруживать различия между исходным и целевым документами и получать координаты изменений на изображениях предварительного просмотра документа. Эти координаты могут быть очень полезны для выделения обнаруженных изменений на изображениях предварительного просмотра документа с некоторой графикой (например, поместите красный прямоугольник вокруг каждого обнаруженного изменения).

Ниже приведены шаги для получения координат изменений.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) и установите [CalculateCoordinates](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/compareoptions/properties/calculatecoordinates) значение true;
* Вызовите метод [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) и передайте [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison .options/compareoptions) объект из предыдущего шага;
* Вызов метода [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index).

В следующем примере кода показано, как сравнить несколько документов с определенными параметрами.

## Пример расчета координат

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions compareOptions = new CompareOptions(){ CalculateCoordinates = true };
    comparer.Compare(compareOptions);
    ChangeInfo[] changes = comparer.GetChanges();
    foreach (ChangeInfo change in changes)
    	Console.WriteLine("Change Type: {0}, X: {1}, Y: {2}, Text: {3}", change.Type, change.Box.X, change.Box.Y, change.Text);
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
