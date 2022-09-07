---
id: как-сравнить-autodesk-drawing-exchange-format-documents
url: comparison/java/how-to-compare-autodesk-drawing-exchange-format-documents
title: "Как сравнить документы в формате Autodesk Drawing eXchange"
weight: 23
description: "Прочитав эту статью, вы узнаете, как сравнивать документы в формате Autodesk Drawing eXchange Format (DXF)"
keywords: "Как сравнить файлы AutoCAD, сравнить файлы CAD, сравнить чертеж Autodesk, сравнить DXF"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Сравните файлы AutoCad DXF
        description: "Продукт позволяет сравнивать файлы AutoCad DXF"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнивать документы DXF (Autodesk Drawing eXchange Format)
        description: "Узнайте, как сравнивать документы DXF (Autodesk Drawing eXchange Format)"
шаги:
- имя: Загрузить исходный документ AutoCad DXF
текст: создать экземпляр класса Comparer, передав исходный документ AutoCad DXF в качестве параметра конструктора.
- имя: Загрузить целевой документ AutoCad DXF
текст: добавьте один или несколько целевых документов AutoCad DXF, чтобы сравнить их с исходным.
- имя: сравнение исходных и целевых документов AutoCad DXF.
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---
Обычно очень сложно определить изменения, внесенные в документы Autodesk DXF (Drawing eXchange Format). В то же время это очень популярный вопрос, особенно в наше время, когда во многих компаниях есть сотрудники, которые работают удаленно. К счастью, с помощью [GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java) вы можете легко сравнить два документа DXF, а также другие [поддерживаемые форматы файлов]({{< ref "comparison/java/ начало работы/поддерживаемые форматы документов.md" >}})

## Выделение изменений при сравнении формата чертежей Autodesk

Результат сравнения можно сохранить в виде файла PDF с выделением измененных, удаленных или вставленных элементов. Вы можете легко изменить цвета выделения, чтобы изменения помечались по-разному. Цвета по умолчанию:

* Объекты, которые были удалены — <font color="red">**красный**</font>
* Объекты, которые были вставлены — <font color="blue">**синий**</font>
* Объекты, которые были изменены — <font color="green">**зеленый**</font>

## Как сравнить документы Autodesk Drawing eXchange Format с помощью GroupDocs.Comparison

Чтобы сравнить документы DXF (Autodesk Drawing eXchange Format), выполните следующие действия:

1. Создайте новый экземпляр класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer), передав путь к исходному документу или поток в качестве аргумента.
2. Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) с передачей целевого пути к документу или потока в качестве аргумента.
3. Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) для запуска процесса сравнения.

Следующий пример кода Java демонстрирует подход, описанный выше:

<script src="https://gist.github.com/groupdocs-comparison-gists/c7a7f2c57521c83202818207264b6536.js"></script>

То же самое вы можете сделать в Котлине:

<script src="https://gist.github.com/groupdocs-comparison-gists/b115da918c69f21d1ce7a36dc2874c98.js"></script>

Вот примеры исходных, целевых и результирующих документов:

| Исходный документ DXF (формат Autodesk Drawing eXchange) | Целевой документ DXF (формат Autodesk Drawing eXchange) |
|------------------------------------------------- -------------------------------------------------- | -------------------------------------------------- ----------------------------------|
| ![](comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-source.png) | ![](comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-target.png) |

| Результат PDF-документ |
|:------------------------------------------------ ------------------------------------------------:|
| ![](comparison/java/images/how-to-compare-autodesk-drawing-exchange-format-documents-result.png) |


### Как использовать дополнительные параметры сравнения

Библиотека [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/) имеет множество параметров, которые можно использовать для настройки процесса сравнения, а также файла результатов. Здесь показано лишь несколько вариантов. Подробнее см. в [документации](/comparison/java/getting-started/)

#### Создание итоговой страницы

Вы можете легко включить создание специальной страницы, на которой будет отображаться сводная информация об изменениях в документе. Кроме того, вы можете включить создание расширенной сводной страницы, чтобы получить гораздо более подробную информацию.

Вот пример кода для Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/6820d8c552709a6bb49923f2633ce20f.js"></script>

То же самое вы можете сделать в приложении Kotlin:

<script src="https://gist.github.com/groupdocs-comparison-gists/40d05bf0aaf79e156fb57123d59e62f6.js"></script>

#### Настройка стиля изменения

Чтобы использовать пользовательский стиль изменений, просто настройте компаратор, чтобы он выделял изменения так, как вы хотите.

Вот пример кода для Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

В Котлине это работает так же:

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

### Получите бесплатную лицензию API

Большинство настроек, например генерация итоговой страницы, чувствительность сравнения и т. д., доступны только при наличии лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

В этой статье написано о сравнении документов DXF (Autodesk Drawing eXchange Format) с использованием библиотеки [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/). Библиотеку можно легко встроить в любое Java или Kotlin, настольное или веб-приложение на любой платформе. Примеры использования Comparison API внутри веб-приложений есть на [странице GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Их можно свободно изменять и использовать для сравнения чертежей AutoCad, фотографий, Excel, Word, файлов кода, презентаций PowerPoint и других [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/).

Дополнительные сведения, варианты и примеры можно найти в [документации](/comparison/java/getting-started/) и репозитории [GitHub](https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие документы с помощью бесплатного онлайн-приложения **[приложение для сравнения GroupDocs] (https://products.groupdocs.app/ сравнение)**.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить чертежи AutoCAD](/comparison/java/how-to-compare-autocad-drawings)
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [использовать Google Drive API в качестве источника файлов](/comparison/java/how-to-use-google-drive-api-as-files-source-for-comparison-api) для сравнения документов на Java или Kotlin

