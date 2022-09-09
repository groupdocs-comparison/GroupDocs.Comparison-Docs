---
id: как-сравнить-json-применение-отклонения-изменений
url: comparison/java/how-to-compare-json-applying-rejecting-changes
title: "Как сравнить файлы json, применив или отклонив изменения"
weight: 27
description: "В статье описывается, как сравнивать файлы json с применением или отклонением изменений с помощью GroupDocs.Comparison."
keywords: "сравнение и сопоставление, сравнение файлов Json, сравнение Json с Kotlin и Java, инструмент сравнения файлов Json"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
name: Инструмент для сравнения файлов Json
        description: "Продукт позволяет сравнивать файлы Json"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнить файлы Json в приложении Java или Kotlin
        description: "Вы можете легко сравнить любые файлы Json с принятием или отклонением изменений."
шаги:
- название: Добавление библиотеки сравнения в проект
текст: вам нужно добавить репозиторий и зависимость Groupdocs в ваш проект
- имя: сравнение исходного и целевого файлов Json, чтобы увидеть все различия
текст: сравните файлы Json всего в нескольких строках кода, чтобы увидеть их разницу
- имя: Принятие или отклонение изменений в файле Json
текст: принять или отклонить изменения, сохранив действительный результирующий файл Json
---
Файлы Json очень популярны в настоящее время. Они используются для передачи данных в Интернете, для настройки приложений и так далее. Таким образом, очень часто людям нужно сравнивать файлы Json, чтобы увидеть, были ли они изменены или нет. В то же время может быть очень полезно отказаться от одних изменений и принять другие. Если вам нужна такая функциональность, лучшим решением для вас будет [GroupDocs.Comparison](https://products.groupdocs.com/comparison).

### Как сравнить файлы Json в приложении Java или Kotlin

Все, что вам нужно, это добавить в проект [библиотеку GroupDocs.Comparison](https://repository.groupdocs.com/comparison/) и написать всего несколько строк кода

#### Добавление библиотеки сравнения в проект

Первое, что вам нужно, это добавить репозиторий GroupDocs в проект.

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

Во-вторых, добавить необходимую зависимость

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

#### Сравнение исходного и целевого файлов Json, чтобы увидеть все различия

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) — очень мощная библиотека, в которой есть множество опций для сравнения файлов, анализа изменений, получения подробной информации о каждом изменении, принятия или отклонения каждого изменения и так далее. Здесь используется лишь малая часть возможностей. Более подробную информацию о них вы можете найти в [документации](/comparison/java/getting-started/)

<details open><summary>Вот код, который вам нужен для сравнения исходного и целевого файлов Json.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/9395725d254c7500ed2f30dc558fd174.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/8eb90b7f07e6240ec875e5e195a0a374.js"></script>

</details>
</blockquote></details>

В результате у вас будет два файла:

* файл `.json` со специальными метками, в котором отображается каждое изменение в документе
* `.html` файл с удобочитаемым результатом сравнения

Эти файлы можно использовать для просмотра и анализа изменений. Но это еще не все, что мы хотим сделать, следующий шаг гораздо интереснее и полезнее.

#### Принятие или отклонение изменений в файле Json

Библиотека [GroupDocs.Comparison](https://products.groupdocs.com/comparison) предоставляет не только функцию сравнения, но и возможность получить список изменений, отклонить или принять их и применить к результирующему документу. Это может быть очень полезно, когда некоторые изменения недействительны и должны быть отменены, в то время как другие хороши и должны быть применены к документу.

<details open><summary>Вот код, который вам нужен, чтобы применить или отклонить изменения в файле Json.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/00519168fed54a68e3edbb087a0e0ef8.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/2b54bd01f16bce036b2bd9ec32f58473.js"></script>

</details>
</blockquote></details>

В приведенном выше коде мы получаем список изменений и обрабатываем каждое из них. Мы анализируем значение метода `getSourceText()`. Если он содержит `defaultListTemplate`, `defaultFileTemplate` или `useJSP` (свойства из файла Json), изменение будет принято, все остальные изменения будут отклонены. Чтобы понять, что происходит, посмотрите изображения ниже. После обновления изменения применяются с сохранением в виде нового файла.

Результат будет сохранен в виде двух файлов

* `.json` действительный файл Json без отклоненных изменений, но с принятыми изменениями
* `.html` удобочитаемый файл результата, очень похожий на результат процесса сравнения, но без отклоненных изменений

Вот скриншоты всех файлов:

| Исходный JSON-файл | Целевой файл Json | Результат HTML-файл | Результат Html-файл после применения изменений |
|------------------------------------------------- --------------------------------------|----------- -------------------------------------------------- --------------------------|--------- -------------------------------------------------- -----------------------------|----------------------------------- -------------------------------------------------- --------------------------|
| ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-source.png) | ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-target.png) | ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-result.png) | ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-applied.png) |

Как видите, изменения pobox -> hacker, 200 -> 88 и 100 -> 6 были отклонены, а изменения внутри свойств defaultListTemplate, defaultFileTemplate и useJSP остались в документе. Действительный результирующий документ Json также был сохранен. Вы можете увидеть это ниже

| Результирующий файл Json |
|:------------------------------------------------ -------------------------------------------------------:|
| ![](/comparison/java/images/how-to-compare-json-applying-rejecting-changes-resultant.png) |

### Получите бесплатную лицензию API

Доступно гораздо больше вариантов, например, [чувствительность сравнения](/comparison/java/adjusting-comparison-sensitivity/), [генерация сводной страницы](/comparison/java/get-only-summary-page/) и намного больше. Некоторые из них доступны только при наличии действующей лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без ограничений на пробную версию.

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java/Kotlin мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие с помощью бесплатного онлайн-приложения для сравнения GroupDocs (https://products.groupdocs.app/comparison). ).

### Подробнее

Есть гораздо больше примеров использования [GroupDocs.Comparison](https://products.groupdocs.com/comparison) с Java/Kotlin, доступных на нашей [странице GitHub](https://github.com/groupdocs-comparison/GroupDocs .Сравнение для Java). Вы можете свободно изменять и использовать их для сравнения фотографий, файлов Excel, Word, файлов кода, презентаций PowerPoint и многого другого [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/).

Для получения подробной информации, параметров и примеров вы можете просмотреть [документацию] (/comparison/java/getting-started/) и репозиторий [GitHub] (https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [см. сравнение и контраст](/comparison/java/how-to-see-comparison-and-contrast-of-essays) эссе
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin

