---
id: настройка-сравнительная-чувствительность
url: comparison/net/adjusting-comparison-sensitivity
title: "Настройка чувствительности сравнения"
weight: 2
description: "Узнайте больше о чувствительности при сравнении документов и о том, как настроить ее для достижения наилучшей производительности и точности при сравнении документов с помощью GroupDocs.Comparison для .NET."
keywords: "Чувствительность сравнения, уровень детализации сравнения, сравнение документов, сравнение файлов"
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
название: Как настроить чувствительность сравнения в .NET
      description: "Узнайте, как шаг за шагом настроить чувствительность сравнения в .NET."
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret, используя метод Add
- имя: Укажите необходимые настройки
текст: Создайте объект параметров и укажите SensitivityOfComparison.
- название: Сравнить документы
текст: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу и объект параметров.
---
[**GroupDocs.Comparison**](https://products.groupdocs.com/comparison/net) позволяет настроить чувствительность сравнения для достижения необходимого баланса между скоростью и точностью сравнения документов. Возможный диапазон значений чувствительности сравнения: от **0** до **100**.

* **Минимальное значение** - минимальное значение **0**. Установка минимального значения чувствительности обеспечивает наибольшую скорость сравнения, но может привести к ухудшению качества сравнения.
Если в двух сравниваемых словах есть хотя бы одна общая буква, то эти слова не будут считаться полностью вставленными и удаленными.
* **Значение по умолчанию** — значение по умолчанию **75**. Сравнение происходит, когда процент удаленных или вставленных элементов по отношению ко всем элементам не превышает 75%.
* **Максимальное значение** - максимальные значения **100**. Сравнение происходит на любой длине общей подпоследовательности двух сравниваемых объектов. Этот вариант обеспечивает наилучшее качество, но самую низкую скорость сравнения.

Для лучшего понимания того, как работают алгоритмы сравнения, предположим, что у нас есть две строки:

| Струны |
| --- |
| `1``. Это наша поэзия справедливости` |
| `2``. Джек – радостный теленок` |

Мы будем выделять удаленные части текста <font color="red">**красным** цветом</font> , а вставленные — <font color="blue">**синим**</font> цветом. Таким образом, эти строки имеют две общие подпоследовательности: слово «**is**» и 4 символа пробела.
**
Общая подпоследовательность - "**is**" и имеет длину 6 символов (в ней 4 пробела).
Length of inserted sub-sequence is 13 symbols - **Jackagladcalf**
Removed sub-sequence length is 17 symbols - **Itourequitypoetry**
Рассчитаем процент удаленных и вставленных символов: (17 + 13) / (17 + 13 + 6) * 100 = 83%

*Случай 1.* Если **SensitivityOfComparison = 80%** сравнение этих двух строк даст следующий результат:
**Джек — радостный теленок. Это наша поэзия справедливости**

Так как рассчитанный процент удаленных и вставленных символов равен **83%** и он больше, чем значение **SensitivityOfComparison**, равное **80%**, то эта общая подпоследовательность не будет учитываться.
Первая строка считается полностью удаленной, а вторая строка считается полностью вставленной. Те же результаты будут получены для любого расчетного процента меньше **83%**.

*Случай 2.* Если **SensitivityOfComparison = 85%**, сравнение этих двух строк даст следующий результат:
**ДжекЭто наша поэзия теленка радужной справедливости**

Была обнаружена общая подпоследовательность, поскольку **85% > 83%**. Те же результаты будут получены для любого расчетного процента, превышающего **83%**.

  

Вот шаги для сравнения документов с определенной чувствительностью к сравнению:

* Создать объект [Comparer](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer) с путем или потоком исходного документа;
* Вызовите метод [Add](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison/comparer/methods/add/index) и укажите путь или поток целевого документа;
* Создайте объект [CompareOptions](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.options/compareoptions) с желаемой [SensitivityOfComparison](https://apireference.groupdocs.com/net/comparison/groupdocs .comparison.options/compareoptions/properties/sensitivityofcomparison) значение;
* Вызовите метод [Compare](https://apireference.groupdocs.com/net/comparison/groupdocs.comparison.comparer/compare/methods/1) и передайте [CompareOptions](https://apireference.groupdocs.com/net /comparison/groupdocs.comparison.options/compareoptions) объект для метода.

В следующем фрагменте кода показано, как сравнивать документы с определенной конфиденциальностью:

## Сравните документы с настройкой чувствительности

```csharp
using (Comparer comparer = new Comparer("source.docx"))
{
	comparer.Add("target.docx");
    CompareOptions options = new CompareOptions() { SensitivityOfComparison = 100 };
	comparer.Compare("result.docx", options);
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
