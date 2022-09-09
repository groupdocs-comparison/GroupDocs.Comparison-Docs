---
id: как-отличить-фотографии-в-java-или-котлине
url: comparison/java/how-to-spot-photos-differences-in-java-or-kotlin
title: "Как найти различия в фотографиях с помощью Java или Kotlin"
weight: 11
description: "Статья посвящена сравнению фотографий в Java или Kotlin для выявления различий с помощью API сравнения."
keywords: "Сравнение фотографий, различия фотографий, инструмент Diff для фотографий в Java, Kotlin"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
имя: Инструмент «Найти различия»
        description: "Инструмент позволяет находить различия на фотографиях"
код продукта: сравнение
Платформа продукта: Java
как:
Название: Как найти отличия на фотографиях
        description: "Узнайте, как определить различия фотографий в проекте Java или Kotlin."
шаги:
- название: API сравнения фотографий
текст: Загрузка и настройка Comparison API
- название: Сравните фотографии, чтобы выделить различия
текст: После создания объекта Comparer, передающего исходную и целевую фотографии, просто вызовите специальный метод, чтобы получить результирующий документ
---

В этой статье мы обсудим, как программно найти различия между двумя фотографиями. Пройдя через это, вы легко сравните любые фотографии и выделите выявленные различия с помощью Java или Kotlin.

### API сравнения фотографий на Java или Kotlin

В этой статье я буду использовать Java API [GroupDocs.Comparison](https://products.groupdocs.com/comparison) для сравнения фотографий. Наряду с наиболее часто используемыми форматами изображений, такими как PNG, JPG/JPEG и GIF, существует широкий спектр [поддерживаемых форматов файлов](/comparison/java/supported-document-formats/) для сравнения. Кроме того, API позволяет сравнивать текстовые документы, электронные таблицы, презентации, рисунки, веб-страницы, сообщения электронной почты, файлы исходного кода и многое другое.

#### Загрузите и настройте

Получите библиотеку сравнения фотографий из [раздела загрузок](https://downloads.groupdocs.com/comparison/java). Для приложений Java на основе Maven, Gradle или Kotlin процесс установки очень прост и описан на [соответствующей странице документации](сравнение/java/установка). Позже вы можете попробовать примеры из этой статьи, а также многие другие из [GitHub] (https://github.com/groupdocs-comparison). Для получения подробной информации вы также можете посетить [Справочник по API] (https://apireference.groupdocs.com/comparison/java).

### Сравните фотографии в Java, чтобы выделить различия

Сравнить фотографии и получить результат — всего 3 строчки кода. Вы можете выполнить шаги и использовать указанный исходный код для сравнения любых ваших изображений JPG, PNG, BMP, DICOM, DjVu, GIF и других. Вы можете определить различия или различия между ними в приложении Java.

* Выберите первую фотографию для сравнения с помощью конструктора класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer).
* Добавьте второе фото для сравнения, используя соответствующий метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) Объект сравнения.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для получения результата сравнения обеих фотографий.

Вот код, который сравнивает две фотографии JPG и сохраняет вывод, который выделяет выявленные различия.

---

<details open><summary>Следующий код показывает, как сравнить две фотографии в Java.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

Исходные и целевые фотографии

![Source and target photos](/comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-source.jpg)

Результирующее фото

![Result photo](/comparison/java/images/how-to-spot-photos-differences-in-java-or-kotlin-result.jpg)

---

### Получите бесплатную лицензию API

Вы можете получить [бесплатную временную лицензию](https://purchase.groupdocs.com/temporary-license), чтобы использовать API без оценочных ограничений.

### Вывод

В заключение из этой статьи мы узнали, как сравнивать фотографии в Java. Мы дополнительно выделили выявленные различия после сравнения. Теперь вы можете создать собственное приложение для сравнения фотографий или использовать эти функции в своих Java-приложениях.

Дополнительные сведения, варианты и примеры можно найти в [документации](/comparison/java/getting-started/) и репозитории [GitHub](https://github.com/groupdocs-comparison). Свяжитесь с нами [на форуме] (https://forum.groupdocs.com/) для решения ваших вопросов.

### Смотрите также

* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнивать изображения](/comparison/java/how-to-compare-images-using-java-or-kotlin) с помощью Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить любые файлы](/comparison/java/how-to-compare-any-files-using-compose-desktop) с помощью Compose Desktop
* Как [запустить пример сравнения Dropwizard](comparison/java/how-to-run-dropwizard-comparison-sample-using-docker) в качестве контейнера Docker
* How to [run Spring Comparison sample](comparison/java/how-to-run-spring-comparison-sample-using-docker) as Docker container
