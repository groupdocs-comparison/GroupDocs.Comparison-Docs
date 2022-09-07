---
id: как найти разницу в двух чертежах AutoCAD DWG
url: comparison/java/how-to-spot-the-difference-of-two-autocad-dwg-drawings
title: "Как определить разницу между двумя чертежами AutoCad (DWG)"
weight: 24
description: "В статье написано о том, как найти отличия двух чертежей AutoCad (DWG)"
keywords: "Как сравнить чертежи AutoCAD, сравнить файлы DWG, сравнить чертеж AutoCad, сравнить DWG"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Сравнить чертежи AutoCad (файлы DWG)
        description: "Продукт позволяет сравнивать чертежи AutoCad (файлы DWG)"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнивать чертежи AutoCad (файлы DWG)
        description: "Узнайте, как сравнивать чертежи AutoCad (файлы DWG)"
шаги:
- имя: Загрузить исходный файл AutoCad DWG
текст: создать экземпляр класса Comparer, передав исходный файл AutoCad DWG в качестве параметра конструктора.
- имя: Загрузить целевой файл AutoCad DWG
текст: добавьте один или несколько целевых файлов AutoCad DWG, чтобы сравнить их с исходным.
- имя: сравнение исходного и целевого файлов AutoCad DWG.
текст: Запустить процесс сравнения, передав путь, где будет сохранен результат сравнения
---
Очень трудно увидеть разницу между двумя чертежами AutoCad (файлами DWG). В то же время все больше и больше людей нуждаются в этом, особенно в наше время, когда многие сотрудники работают удаленно. К счастью, с библиотекой [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java) вы можете легко сравнить два чертежа AutoCad (файлы DWG), а также множество других [поддерживаемых форматов файлов]({{< ref "comparison/java/getting-started/supported-document-formats.md" >}})

## Как сравнить чертежи AutoCad (файлы DWG)

Просто выполните следующие шаги, чтобы сравнить два или более из них:

1. Создайте новый экземпляр класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем к исходному файлу или потоком в качестве аргумента.
2. Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) для добавления пути или потока целевого документа для сравнения с источник один
3. Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) для сравнения файлов и сохранения итогового документа.

Вот код Java, демонстрирующий шаги, описанные выше:

<script src="https://gist.github.com/groupdocs-comparison-gists/49d0e0a30eeacc325a1d7acce26e5c8c.js"></script>

То же самое вы можете сделать в Котлине:

<script src="https://gist.github.com/groupdocs-comparison-gists/70107598e427be7b12b7fa1c8490e8ce.js"></script>

Вот примеры исходных, целевых и результирующих документов:

| Исходный чертеж AutoCad (файлы DWG) | Целевой чертеж AutoCad (файлы DWG) |
|------------------------------------------------- -------------------------------------------------- | -------------------------------------------------- --------------------------------------------------------------|
| ![](сравнение/java/изображения/как-найти-разницу-двух-autocad-dwg-drawings-source.png) | ![](сравнение/java/изображения/как-найти-разницу-двух-autocad-dwg-drawings-target.png) |

| Результат PDF-документ |
|:------------------------------------------------ ------------------------------------------------:|
| ![](сравнение/java/изображения/как определить-разницу-двух-автокад-dwg-рисунков-результат.png) |

### Как использовать дополнительные параметры сравнения

[GroupDocs.Comparison API](https://products.groupdocs.com/comparison/java/) предоставляет множество дополнительных параметров, которые можно использовать для настройки не только процесса сравнения, но и файла результатов. Ниже описаны лишь некоторые из них. Для получения более подробной информации см. [документацию](/comparison/java/getting-started/)

#### Использование пользовательского стиля изменения

Вы можете легко настроить стили изменений, изменив его цвета или другие параметры:

Вот пример кода для Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/34cd530807eb1d374774c73978e055c2.js"></script>

В Котлине это работает так же:

<script src="https://gist.github.com/groupdocs-comparison-gists/6ebabe0c0626c7bbabb12ae355b09b4f.js"></script>

#### Отключение подсветки некоторых типов изменений

Существуют специальные параметры для отключения обнаружения некоторых типов изменений, в качестве примера ниже показано, как не показывать вставленные части файла чертежа.

Вот пример кода для Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/036dc8d48fcf19b984dc867d3207b47c.js"></script>

То же самое вы можете сделать в приложении Kotlin:

<script src="https://gist.github.com/groupdocs-comparison-gists/7536b954fb8da77335fd9af15801404b.js"></script>

### Получите бесплатную лицензию API

Многие настройки, например генерация итоговой страницы, чувствительность сравнения и т.д. доступны только при наличии лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

В этой статье написано о сравнении чертежей AutoCad (файлов DWG) с использованием библиотеки [GroupDocs.Comparison](https://products.groupdocs.com/comparison/java/). Библиотеку очень легко встроить в любое Java или Kotlin, настольное или веб-приложение на любой платформе. Примеры использования Comparison API внутри веб-приложений есть на [странице GitHub](https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java). Их можно свободно изменять и использовать для сравнения чертежей AutoCad, фотографий, Excel, Word, файлов кода, презентаций PowerPoint и других [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/).

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

