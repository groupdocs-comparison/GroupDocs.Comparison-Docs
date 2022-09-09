---
id: как увидеть сравнение и контраст эссе
url: comparison/java/how-to-see-comparison-and-contrast-of-essays
title: "Как увидеть сравнение и контраст эссе"
weight: 26
description: "В статье описывается использование GroupDocs.Comparison для сравнения и сопоставления эссе."
keywords: "сравнение и противопоставление, Сравните эссе, Сравните PDF с Kotlin и Java, Инструмент сравнения для эссе"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: API сравнения эссе
        description: "Продукт позволяет сравнивать файлы Pdf, Word и Image."
код продукта: сравнение
Платформа продукта: Java
как:
название: Как увидеть сравнение и контраст эссе в приложении Java или Kotlin
        description: "Вы можете легко увидеть сравнение и противопоставление эссе в своем собственном приложении Java или Kotlin, написав всего несколько строк кода."
шаги:
- название: Настройка библиотеки сравнения в проекте
текст: Чтобы настроить библиотеку сравнения, просто добавьте в проект репозиторий maven и зависимость
- имя: запустить процесс сравнения, чтобы увидеть сравнение и сопоставление эссе в результирующем документе.
текст: Ниже приведено описание и пример кода сравнения эссе
---
Многие студенты пишут сочинения каждый день. Иногда это очень легко, особенно когда тема эссе интересна и понятна. Но иногда студенты тратят много времени только на то, чтобы понять, о чем должно быть эссе. На изучение всех материалов и составление плана, который будет использоваться при написании, может уйти несколько дней. Некоторая информация может дублироваться в разных источниках. В то же время никому не хочется писать одну и ту же информацию в эссе более одного раза. Лучший способ избежать дублирования — сравнить информацию из разных источников и проверить, дублируется она или нет. Чтобы увидеть сравнение и сопоставление различных источников информации или даже нескольких эссе, вы можете использовать мощный и простой в использовании [API GroupDocs.Comparison] (https://products.groupdocs.com/comparison), который дает возможность сравнивать Word, Excel , PowerPoint, документы Pdf, текстовые файлы и многое другое [форматы файлов](/comparison/java/supported-document-formats/). Существует бесплатное онлайн-приложение для сравнения и несколько образцов, которые можно запустить на локальном ПК. Ссылки на них ниже.

### Как увидеть сравнение и контраст эссе в приложении Java или Kotlin

Если у вас есть приложение Java или Kotlin, в которое должны быть встроены функции для сравнения и сопоставления эссе, [GroupDocs.Comparison](https://products.groupdocs.com/comparison) — это именно то, что вам нужно.

#### Настройка библиотеки сравнения в проекте

Прежде всего, добавьте репозиторий GroupDocs в файл проекта:

<details open><summary>Добавить репозиторий GroupDocs</summary><blockquote>
<details open><summary>Мавен</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9de00b81ae5dd326fc85fecb5c1220a6.js"></script>

</details>
<details><summary>Грейдл</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/15f77ae825f310acd9cad555dcea0019.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/ad7ad48d4e7f9f60e858c7ba546f3745.js"></script>

</details>
</blockquote></details>

Во-вторых, добавить необходимую зависимость и синхронизировать проект с помощью IDE.

_Последнюю версию Comparison API можно [найти здесь](https://repository.groupdocs.com/comparison/)_

<details open><summary>Добавить зависимость GroupDocs.Comparison</summary><blockquote>
<details open><summary>Мавен</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/f4d8f0b56d1dfa24dea18c68cd9d8001.js"></script>

</details>
<details><summary>Грейдл</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b760d58061daa45d9b211e2701aa52b5.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/b20a9f70c3442ca586a95b00a778a464.js"></script>

</details>
</blockquote></details>

#### Запустите процесс сравнения, чтобы увидеть сравнение и контраст эссе в итоговом документе

Очень легко использовать [GroupDocs.Comparison](https://products.groupdocs.com/comparison) для сравнения эссе и просмотра их сравнения и сравнения.

Вот шаги для сравнения двух эссе в виде файлов PDF:

* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer), передающий исходный путь или поток эссе в качестве аргумента
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите целевой путь или поток эссе
* При желании вы можете использовать [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) и его метод [setDetectStyleChanges](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.options/CompareOptions#setDetectStyleChanges-boolean-), чтобы настроить компаратор для выделения изменений стиля (по умолчанию изменения отображаются зеленым цветом)
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String)) для запуска сравнения эссе.

Пример кода Java:

<script src="https://gist.github.com/groupdocs-comparison-gists/fc7b36954eb871f1fee1b1e5d6043ea3.js"></script>

Пример кода Котлина:

<script src="https://gist.github.com/groupdocs-comparison-gists/fabd50201a84e3325f88db48b7668f8d.js"></script>

| Исходное эссе | Целевое эссе |
|------------------------------------------------- ---------------------|------------- -------------------------------------------------- ----------------------|
| ![](/comparison/java/images/how-to-see-comparison-and-contrast-of-essays-source.png) | ![](/comparison/java/images/how-to-see-comparison-and-contrast-of-essays-target.png) |

| Файл результатов |
|:------------------------------------------------ --------------------------------------------------:|
| ![](/comparison/java/images/how-to-see-comparison-and-contrast-of-essays-result.png) |

### Получите бесплатную лицензию API

Доступно гораздо больше опций, например, [создание сводной страницы](/comparison/java/get-only-summary-page/), [чувствительность сравнения](/comparison/java/adjusting-comparison-sensitivity/) и скоро. Многие из них доступны только при установленной лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без ограничений на пробную версию.

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java/Kotlin мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с помощью бесплатного онлайн-приложения для сравнения GroupDocs (https://products.groupdocs.app/comparison). ).

### Подробнее

Есть гораздо больше примеров использования [GroupDocs.Comparison](https://products.groupdocs.com/comparison) с Java/Kotlin, доступных на нашей [странице GitHub](https://github.com/groupdocs-comparison/GroupDocs .Сравнение для Java). Вы можете свободно изменять и использовать их для сравнения фотографий, файлов Excel, Word, файлов кода, презентаций PowerPoint и многого другого [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/).

Чтобы получить подробную информацию, варианты и примеры, вы можете просмотреть [документацию] (/comparison/java/getting-started/) и репозиторий [GitHub] (https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [использовать Javalin Framework](/comparison/java/how-to-use-javalin-comparison-sample) с API сравнения
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin

