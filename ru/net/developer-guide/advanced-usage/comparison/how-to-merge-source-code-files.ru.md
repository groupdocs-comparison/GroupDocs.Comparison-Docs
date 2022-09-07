---
id: как объединить файлы исходного кода
url: comparison/net/how-to-merge-source-code-files
title: "Как объединить файлы исходного кода"
weight: 8
description: "В этой статье объясняется, как управлять объединением файлов в GroupDocs.Comparison для .NET."
keywords: "Объединение документов, сравнение документов, сравнение документов, сравнение файлов"
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
name: Как получить исходный и целевой текст в .NET
      description: "Узнайте, как получить исходный и целевой текст в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает путь к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- name: Создать массив для изменений файлов
текст: вызовите метод GetChanges для объекта Comparer и присвойте результат массиву типа ChangeInfo.
- имя: Отклонить или принять изменения
текст: Чтобы отклонить или принять изменения, откройте поле ComparisonAction элемента массива и установите значение Reject или Accept из перечисления ComparisonAction.
- name: Создать массив для изменений файлов
текст: вызовите метод GetChanges для объекта Comparer и присвойте результат массиву типа ChangeInfo.
- имя: Применить изменения
текст: Чтобы применить изменения, вызовите метод ApplyChanges объекта класса Comparer. Метод принимает параметр файлового потока результирующего файла и объект класса ApplyChangeOptions, который должен содержать массив ChangeInfo.
---

***

[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) предоставляет возможность объединять файлы исходного кода с помощью [ComparisonAction](https://apireference.groupdocs.com/comparison /net/groupdocs.comparison.result/changeinfo/properties/comparisonaction):

* [ComparisonAction.Accept](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/comparisonaction) принимает найденные изменения и добавляет их в файл без подсветки;
* [ComparisonAction.Reject](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.result/comparisonaction) отменяет найденные изменения и удаляет их из файла результатов.

Ниже приведены шаги для применения/отклонения изменений в результирующем файле.

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому документу или потоку;
* Вызов метода [Сравнить](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/compare/index);
* Вызовите метод [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) и получите список обнаруженных изменений;
* Установите [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) необходимого объекта изменения на [ComparisonAction.Accept](https://apireference.groupdocs .com/net/comparison/groupdocs.comparison.result/comparisonaction) или значение [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction);
* Вызвать метод [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) и передать ему коллекцию изменений.

## Пример слияния файла исходного кода с использованием GroupDocs.Comparison

---

Например, вам нужно сравнить и объединить несколько версий файлов исходного кода, и вам нужно принять или отменить изменения, сделанные разными людьми.

![](comparison/net/images/how-to-merge-source-code-file-source.png)
![](comparison/net/images/how-to-merge-source-code-file-target.png)

Различия показывают, что в файле **source.cs** записаны два метода: *AddNumbers* и *Sum*.

Если вы не использовали ComparisonAction, то в результирующем файле будут зафиксированы все изменения, и эти методы будут удалены, но если вам нужно контролировать слияние файлов, то [ComparisonAction](https://apireference.groupdocs. com/comparison/net/groupdocs.comparison.result/changeinfo/properties/comparisonaction) поможет вам в этом.

## Пример использования ComparisonAction

---

В следующих примерах кода показано, как объединить два файла исходного кода.
```csharp
using (Comparer comparer = new Comparer(sourcePath))
{
    comparer.Add(targetPath);
    comparer.Compare(resultPath);

    ChangeInfo[] changes = comparer.GetChanges();
    for (int i = 0; i < 10; i++)
    {
        changes[i].ComparisonAction = ComparisonAction.Accept;
    }

    for (int i = 10; i < changes.Length; i++)
    {
    	changes[i].ComparisonAction = ComparisonAction.Reject;
    }

    comparer.ApplyChanges(File.Create(resultPath), new ApplyChangeOptions { Changes = changes });
}
```
## Результат объединения файлов

---

В результате мы получаем объединенный файл исходного кода, где удаленные элементы отмечены <font color="red">**красным**</font> , добавленные — <font color="blue">**синим**</font> , а измененные — <font color="green">**зеленым**</font> .

Также вы получите файл в формате HTML с измененными местами в коде.

| Файл исходного кода результата | Результирующий HTML-файл |
| --- | --- |
| ![](comparison/net/images/how-to-merge-source-code-file-result-CS.png) | ![](comparison/net/images/how-to-merge-source-code-file-result-HTML.png) |

Как видно из полученных файлов, из двух методов был удален только один.

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
