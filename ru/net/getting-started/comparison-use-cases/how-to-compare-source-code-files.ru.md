---
id: как сравнить файлы исходного кода
url: comparison/net/how-to-compare-source-code-files
title: "Как сравнить файлы исходного кода"
weight: 6
description: "В этой статье описывается, как сравнивать файлы с помощью GroupDocs.Comparison для .NET. Вы также узнаете, как сравнивать два или более файлов с исходным кодом и как влиять на их сравнение."
keywords: "Сравните файлы исходного кода, файлы исходного кода, как сравнить файлы файлов исходного кода, ComparisonAction, ComparisonAction.Accept, ComparisonAction.Reject"
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
название: Как сравнить файлы исходного кода в .NET
    description: "Как шаг за шагом сравнивать файлы исходного кода в .NET"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает путь к исходному файлу или параметр потока. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret с помощью метода Add.
- имя: Сравнить файлы
текст: вызовите метод Compare вашего объекта без параметров.
- name: Создать массив для изменений файлов
текст: вызовите метод GetChanges для объекта Comparer и присвойте результат массиву типа ChangeInfo.
- имя: Отклонить изменения
текст: Чтобы отклонить изменения, откройте поле ComparisonAction элемента массива и установите значение Reject из перечисления ComparisonAction.
- имя: Применить изменения
текст: Чтобы применить изменения, вызовите метод ApplyChanges объекта класса Comparer. Метод принимает параметр файлового потока результирующего файла и объект класса ApplyChangeOptions, который должен содержать массив ChangeInfo.
---

***

Существует множество инструментов сравнения, которые позволяют нескольким пользователям эффективно управлять своими изменениями, принимать или отклонять их при совместной работе над исходным кодом, написанным на CSharp, Java, Python, Ruby и других языках программирования. Большая часть таких инструментов — это настольные приложения, бесплатные или платные, предоставляющие мощный набор функций, имеющие свои плюсы и минусы, но все они предполагают, что вы будете сравнивать файлы вручную.

Давайте рассмотрим распространенный случай, когда вам нужно просмотреть две версии файла исходного кода C# (CSharp), отредактированного двумя разными людьми, и выбрать правильный вариант для каждого редактируемого блока кода. Пожалуйста, проверьте файлы source.cs и target.cs, которые мы собираемся сравнить, на изображении ниже.

![](comparison/net/images/how-to-compare-source-code-files1.png)

Как мы видим, между сравниваемыми файлами есть несколько различий:
* названия классов разные - *CropImage* vs *ImageCropTests*;
* Метод *Test1* отсутствует в файле *target.cs*;
* Путь к растровому изображению был изменен в *Test2* - *input.png* вместо *original.png*;
* Метод *Start* переименован в *Launch*, а также изменено его содержимое - удален вызов метода *Test1*;
* удалены некоторые пустые строки и т.д.

На изображении ниже показаны все упомянутые изменения, обнаруженные некоторыми инструментами сравнения настольных компьютеров. Он работает просто отлично, все различия обнаружены и выделены в пользовательском интерфейсе.

![](comparison/net/images/how-to-compare-source-code-files2.png)

Однако иногда вам могут понадобиться некоторые функции, которые не предоставляют существующие инструменты сравнения, или вы хотите реализовать процесс сравнения по-своему. Тогда вам обязательно понадобится возможность программно сравнивать документы и управлять обнаруженными изменениями через код. Здесь на помощь придут функции **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison/net)**, поэтому давайте посмотрим, как сравнивать с ним файлы исходного кода.

## Сравните файлы CSharp, Java, C++, JavaScript, Python и Ruby с помощью GroupDocs.Comparison.
 

 ---

Используя **[GroupDocs.Comparsion](https://products.groupdocs.com/comparison/net)** API, вы можете сравнить два или более файлов исходного кода, обнаружить различия между ними, а затем решить, что делать с каждым из них. обнаруженное изменение - принять или отклонить его перед сохранением результирующего документа, создать HTML-отчет с результатами сравнения и т. д.

Как правило, для сравнения двух файлов исходного кода необходимо выполнить следующие действия (см. список других поддерживаемых форматов [здесь] (https://wiki.lisbon.dynabic.com/display/comparison/Supported+File+Formats)):

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь к целевому документу или потоку;
* Вызовите метод [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) и выполните сравнение файлов.







На этом этапе вы можете сохранить отчет о сравнении в формате HTML и просмотреть его. Если вам необходимо программно получить набор обнаруженных изменений для дальнейшей обработки, вам необходимо:

* Вызвать метод [GetChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/getchanges/index) и получить список обнаруженных изменений;
* Установите желаемое [ComparisonAction](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/changeinfo/properties/comparisonaction) для необходимого объекта изменения на [ComparisonAction.Accept](https://apireference. значение groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction) или [ComparisonAction.Reject](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.result/comparisonaction);
* Создать объект [ApplyChangeOptions](https://apireference.groupdocs.com/comparison/net/groupdocs.comparison.options/applychangeoptions), который содержит список изменений, которые должны быть применены (или отклонены) к результирующему документу;
* Вызовите метод [ApplyChanges](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/applychanges/index) и сохраните документ.

Вы можете узнать больше о свойстве ComparisonAction [здесь](https://wiki.lisbon.dynabic.com/display/comparison/How+to+merge+source+code+files).

В следующих примерах кода показано, как сравнить два файла CS и принять или отклонить обнаруженные изменения в определенном диапазоне.

```csharp
using (Comparer comparer = new Comparer("source.cs"))
{
    comparer.Add("target.cs");
    comparer.Compare();
    ChangeInfo[] changes = comparer.GetChanges();
    changes[0].ComparisonAction = ComparisonAction.Reject; // This is how to reject first detected difference;
    changes[1].ComparisonAction = ComparisonAction.Reject; // This is how to reject second detected difference;
    changes[2].ComparisonAction = ComparisonAction.Reject; // This is how to reject third detected difference;
    comparer.ApplyChanges(File.Create("result.cs"), new ApplyChangeOptions { Changes = changes });
}     


```

В результате мы получаем объединенный CS-файл, где удаленные элементы отмечены <font color="red">красным цветом</font> , добавленные — <font color="blue">синим</font> , а измененные — <font color="green">зеленым</font> .


Также вы получите файл в формате HTML с измененными местами в коде.

| Результирующий HTML-файл | Результирующий HTML-файл с использованием свойства ComparisonAction |
| --- | --- |
| ![](comparison/net/images/how-to-compare-source-code-files_result1.PNG) | ![](comparison/net/images/how-to-compare-source-code-files_result2.PNG) |

## Дополнительные ресурсы

---

### Темы для продвинутого использования
Чтобы узнать больше о функциях сравнения документов, обратитесь к [разделу расширенного использования]({{< ref "comparison/net/developer-guide/advanced-usage/_index.md" >}}).

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

