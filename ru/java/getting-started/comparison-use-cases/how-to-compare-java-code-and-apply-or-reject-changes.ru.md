---
id: как-сравнить-java-код и-применить-или-отклонить-изменения
url: comparison/java/how-to-compare-java-code-and-apply-or-reject-changes
title: "Как сравнить код Java и применить или отклонить изменения"
weight: 28
description: "В статье описывается, как сравнивать код Java и применять или отклонять изменения с помощью GroupDocs.Comparison."
keywords: "сравнение и противопоставление, Сравните код Java, Сравните Java с Kotlin и Java, Средство сравнения кода Java"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: API для сравнения кода Java
        description: "Продукт позволяет сравнивать Java-код"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как сравнить код Java в приложении
        description: "Вы можете легко сравнить любой код Java, а затем принять или отклонить изменения."
шаги:
- название: Настройка библиотеки сравнения в проекте
текст: вам необходимо настроить репозиторий и зависимость Groupdocs в вашем проекте
- имя: Запуск процесса сравнения кода Java и получение всех различий
текст: сравните код Java, написав всего несколько строк кода, чтобы увидеть разницу между ними.
- имя: проверьте изменения в коде Java, чтобы принять или отклонить их
текст: проверьте каждое изменение и примите или отклоните каждое из них, сохраняя действительный результирующий файл Java
---
Java — это высокоуровневый, основанный на классах, объектно-ориентированный язык программирования, спроектированный так, чтобы иметь как можно меньше зависимостей от реализации. Многие компании создают продукты с использованием Java. Это означает, что многие команды пишут код Java, а затем код объединяется. Иногда молодые разработчики допускают ошибки. Таким образом, опытные разработчики должны проверять изменения в коде. Одни изменения правильны и должны быть приняты, а другие ошибочны и должны быть отклонены. [GroupDocs.Comparison](https://products.groupdocs.com/comparison) — лучшее решение для таких случаев.

### Как сравнить код Java в приложении

Единственное, что вам нужно сделать, это настроить [библиотеку GroupDocs.Comparison](https://repository.groupdocs.com/comparison/) в вашем проекте. После этого, написав всего несколько строчек кода, можно решить вопрос.

#### Настройка библиотеки сравнения в проекте

Во-первых, добавьте в проект репозиторий GroupDocs, чтобы можно было автоматически скачивать библиотеку.

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

Во-вторых, укажите требуемую библиотечную зависимость

_Последнюю версию библиотеки сравнения можно [найти здесь](https://repository.groupdocs.com/comparison/)_

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

#### Запуск процесса сравнения кода Java и получение всех различий

[GroupDocs.Comparison](https://products.groupdocs.com/comparison) — очень современная и мощная библиотека. Существует множество средств для сравнения файлов, получения сведений об изменениях, анализа изменений, их принятия или отклонения, получения координат для каждого изменения и так далее. В этой статье показана лишь малая часть возможностей. Подробнее о других возможностях можно узнать в [документации](/comparison/java/getting-started/)

<details open><summary>Чтобы сравнить исходные и целевые файлы кода Java, выполните следующие действия.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/78372877c238f2227f5c489e698ef695.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a865cf6080a512b0b1cb4534e74e75f6.js"></script>

</details>
</blockquote></details>

В результате вы найдете следующие два файла:

* Файл результата `.java` со специальными метками, которые отмечают каждое изменение в документе
* `.html` удобочитаемый файл сравнения результатов

Эти файлы можно использовать для анализа изменений, внесенных в целевой документ, по сравнению с исходным. Но это не конец, следующий шаг гораздо полезнее и интереснее.

#### Проверяйте изменения в коде Java, чтобы принять или отклонить их

С помощью [GroupDocs.Comparison](https://products.groupdocs.com/comparison) вы можете сравнивать множество форматов файлов. Кроме того, вы можете получить список изменений, отклонить или принять их, применяя их к результирующему Java-файлу. Это может быть очень полезно, когда некоторые изменения недействительны и должны быть отменены, в то время как другие хороши и должны быть применены к документу.

<details open><summary>Пример применения или отклонения изменений в файле кода Java</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/4c035f1ddf3932d8fc89ecc1519a3005.js"></script>

</details>
<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/c45c087baf5ca2bc7a848112e18180d7.js"></script>

</details>
</blockquote></details>

В приведенном выше примере он получает список изменений для анализа каждого из них. Код проверяет значение метода getSourceText(). Когда он содержит `size;` или `for (int i = 0; i < HASH_TABLE_SIZE` (части измененных строк в файле кода Java), изменение будет принято для сохранения, в противном случае изменение будет отклонено, чтобы сохранить строку, подобную это было в исходном файле.Чтобы понять описанное выше, проверьте изображения ниже.После отклонения или принятия изменения применяются и сохраняются как новый файл.

В результате вы найдете два файла:

* `.java` - действительный файл кода Java, в котором отклоненные изменения были отменены, а принятые изменения сохранены.
* `.html` - удобочитаемый файл, очень похожий на результат, сгенерированный на предыдущем шаге, но без изменений, которые были отклонены

Вот скриншоты всех сгенерированных файлов:

| Файл исходного кода Java | Целевой файл кода Java | Результат HTML-файл | Результат HTML-файл с примененными изменениями |
|------------------------------------------------- ----------------------------------------------------------|----- -------------------------------------------------- --------------------------------------|----------- -------------------------------------------------- --------------------------|--------- -------------------------------------------------- ---------------------|
| ![](comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-source.png) | ![](comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-target.png) | ![](comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-result.png) | ![](comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-applied.png) |

На изображениях видно, что изменения `0` -> `3` и `1` -> `5` были отклонены, а изменения `long` -> `int` и `--` -> `++` сохранен. Действительный файл кода Java также был сохранен. Вы можете увидеть это ниже

| Результирующий файл Json |
|:------------------------------------------------ -------------------------------------------------------------:|
| ![](comparison/java/images/how-to-compare-java-code-and-apply-or-reject-changes-resultant.png) |

### Получите бесплатную лицензию API

В библиотеке сравнения есть множество возможностей, например, [чувствительность сравнения](/comparison/java/adjusting-comparison-sensitivity/), [генерация итоговой страницы](/comparison/java/get-only-summary-page/) и многое другое. Некоторые из них доступны только при наличии действующей лицензии. Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без ограничений на пробную версию.

### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java/Kotlin мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG, XML и другие с помощью бесплатного онлайн-приложения для сравнения GroupDocs (https://products.groupdocs.app). /сравнение).

### Подробнее

Есть гораздо больше примеров использования [GroupDocs.Comparison](https://products.groupdocs.com/comparison) с Java/Kotlin, доступных на нашей [странице GitHub](https://github.com/groupdocs-comparison/GroupDocs .Сравнение для Java). Вы можете свободно изменять и использовать их для сравнения фотографий, файлов Excel, Word, файлов кода, презентаций PowerPoint и многого другого [поддерживаемые форматы файлов](/comparison/java/supported-document-formats/).

Для получения подробной информации, параметров и примеров вы можете просмотреть [документацию] (/comparison/java/getting-started/) и репозиторий [GitHub] (https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить документы](/comparison/java/how-to-compare-documents-in-the-easiest-way) самым простым способом
* Как [сравнить файлы json](/comparison/java/how-to-compare-files-in-java-or-kotlin), применяя или отклоняя изменения с помощью Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [см. сравнение и контраст](/comparison/java/how-to-see-comparison-and-contrast-of-essays) эссе
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin

