---
id: примеры запуска
url: comparison/net/how-to-run-examples
title: "Как запускать примеры"
weight: 6
description: "В этой статье вы можете найти, как запускать примеры. Мы предлагаем несколько решений о том, как вы можете запускать примеры GroupDocs.Comparison, создавая свои собственные или используя готовые готовые примеры серверной или клиентской части."
keywords: "Как запустить сравнение, основное использование, Как запустить примеры"
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
название: Как запускать примеры в .NET
      description: "Как запускать примеры в .NET шаг за шагом"
шаги:
- имя: Создать объект и загрузить исходный файл
текст: Создайте объект класса Comparer. Конструктор принимает параметр пути к исходному файлу. Вы можете указать абсолютный или относительный путь к файлу в соответствии с вашими требованиями.
- имя: Загрузить целевой файл
текст: добавьте путь к файлу tagret, используя метод Add
- название: Сравнить документы
text: Вызовите метод Compare вашего объекта и поместите результирующий параметр пути к файлу.
---
{{< alert style="warning" >}}Перед запуском примера убедитесь, что GroupDocs.Comparison успешно установлен.{{< /alert >}}

Мы предлагаем несколько решений о том, как вы можете запустить примеры **[GroupDocs.Comparison](https://products.groupdocs.com/comparison/net)**, создав свои собственные или используя наши внутренние или внешние примеры. вне коробки.

Пожалуйста, выберите один из следующего списка:


## Создать проект с нуля

* Откройте Visual Studio и перейдите в **Файл** -> **Создать** -> **Проект**.
* Выберите соответствующий тип проекта — консольное приложение, веб-приложение ASP.NET и т. д.
* Установите **GroupDocs.Comparison для .NET** с Nuget или официального веб-сайта GroupDocs, следуя этому [руководству]({{< ref "comparison/net/getting-started/installation.md" >}}).
* Создайте свое первое приложение с помощью **GroupDocs.Comparison for .NET** следующим образом.
```csharp
строка sourceDocumentPath = @"C:\source.docx"; // ПРИМЕЧАНИЕ. Укажите здесь фактический путь к исходному документу
строка targetDocumentPath = @"C:\target.docx"; // ПРИМЕЧАНИЕ. Укажите здесь фактический путь к исходному документу
string outputPath = @"C:\result.docx"; // ПРИМЕЧАНИЕ. Укажите здесь фактический путь к исходному документу
    

используя (компаратор сравнения = новый компаратор (sourceDocumentPath))
{
компаратор.Добавить(targetDocumentPath);
компаратор. Сравнить (выходной путь);
}
```
* Создайте и запустите свой проект.
* Отображаемые страницы документа будут находиться по пути, указанному в параметре *"outputPath"*.

## Запуск серверных примеров

Полный пакет примеров **GroupDocs.Comparison** размещен на [GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET). Вы можете загрузить ZIP-файл из [здесь] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET/archive/master.zip) или клонировать репозиторий GitHub с помощью вашего любимого клиента git. .
Если вы загружаете ZIP-файл, распакуйте папки на локальном диске. Извлеченные файлы и папки будут выглядеть следующим образом:

![](comparison/net/images/how-to-run-examples.jpg)

В извлеченных файлах и папках вы можете найти файл решения CSharp. Проект создан в **Microsoft Visual Studio 2019**. Папка **Ресурсы** содержит все образцы документов и файлы изображений, использованные в примерах.
Чтобы запустить примеры, откройте файл решения в Visual Studio и создайте проект. Чтобы добавить отсутствующие ссылки на **GroupDocs.Comparison**, см. [руководство по установке]({{< ref "comparison/net/getting-started/installation.md" >}}). Все функции вызываются из **RunExamples.cs**.
Раскомментируйте функцию, которую вы хотите запустить, и прокомментируйте остальные.

![](comparison/net/images/how-to-run-examples_1.png)

## Запуск примеров MVC

Вы можете запустить [Пример GroupDocs.Comparison для .NET MVC](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC), выполнив следующие действия:

* Загрузите [исходный код](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC/archive/master.zip) с GitHub или клонируйте этот репозиторий.
```csharp
клон git https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC
```
* Открыть решение в VisualStudio. Обновите общие параметры в **web.config** и связанные с примерами свойства в **configuration.yml**, чтобы они соответствовали вашим требованиям.
* Откройте [http://localhost:8080/comparison](http://localhost:8080/comparison) в своем любимом браузере.

Дополнительные сведения о настройке проекта см. в этом [руководстве] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC#configuration).

## Запуск примеров WebForms

Вы можете запустить [Пример GroupDocs.Comparison для .NET Web.Forms](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms), выполнив следующие действия:
* Загрузите [исходный код](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms/archive/master.zip) с GitHub или клонируйте этот репозиторий.
```csharp
клон git https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms
```
* Открыть решение в VisualStudio. Обновите общие параметры в **web.config** и связанные с примерами свойства в **configuration.yml**, чтобы они соответствовали вашим требованиям.
* Откройте [http://localhost:8080/comparison](http://localhost:8080/comparison) в своем любимом браузере.

Дополнительные сведения о настройке проекта см. в этом [руководстве] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms#configuration).

## Запуск из Докера

Используйте образ [Docker](https://www.docker.com/), чтобы опробовать функции GroupDocs.Comparison для .NET простым способом. Вот команда для запуска GroupDocs.Comparison для .NET из образа докера.

```csharp
mkdir DocumentSamples
mkdir Licenses
docker run -p 8080:8080 --env application.hostAddress=localhost -v `pwd`/DocumentSamples:/home/groupdocs/app/DocumentSamples -v `pwd`/Licenses:/home/groupdocs/app/Licenses groupdocs/comparison
## Open http://localhost:8080/comparison in your favorite browser.
```

## Делать вклад

Если вы хотите добавить или улучшить пример, мы рекомендуем вам внести свой вклад в проект. Все примеры в этом репозитории имеют открытый исходный код и могут свободно использоваться в ваших собственных приложениях.
Чтобы внести свой вклад, вы можете разветвить репозиторий, отредактировать код и создать запрос на включение. Мы рассмотрим изменения и включим их в репозиторий, если сочтем их полезными.

