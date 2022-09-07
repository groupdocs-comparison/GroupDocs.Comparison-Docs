---
id: как-сравнивать-изображения-используя-java-или-kotlin
url: comparison/java/how-to-compare-images-using-java-or-kotlin
title: "Как сравнить изображения, чтобы увидеть различия в Java или Kotlin"
weight: 7
description: "Вы узнаете, как можно использовать GroupDocs.Comparison для Java внутри вашей продукции при сравнении изображений, чтобы увидеть различия. Ознакомьтесь с конфигурацией чувствительности к сравнению файлов и другими вариантами использования API GroupDocs.Comparison."
keywords: "Сравните изображения, найдите различия в изображениях, как сравнивать изображения в Java, Kotlin"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: Сравнить изображения
        description: "Продукт позволяет сравнивать изображения"
код продукта: сравнение
Платформа продукта: Java
как:
название: Как найти различия между двумя изображениями
        description: "Узнайте, как найти различия между двумя изображениями в проекте Java или Kotlin."
шаги:
- имя: Загрузить исходное изображение
текст: создать экземпляр класса Comparer, передающий исходное изображение в качестве параметра конструктора.
- имя: Загрузить целевые изображения
текст: добавьте одно или несколько целевых изображений, чтобы сравнить их с исходным
- имя: Сравните исходное и целевое изображения
текст: запустить процесс сравнения, передав путь, где должно быть сохранено изображение результата
---
Хотите ли вы создать приложение с функцией обнаружения различий или хотите программно сравнить два изображения в любом из ваших приложений для обработки изображений на основе Java (или Kotlin), вы попали в нужное место. С нашим продуктом вы можете легко сравнивать JPG, PNG, BMP или изображения с некоторыми другими форматами файлов. Не теряя времени, сравним изображения в Java и Kotlin с помощью **[GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java)**

![Idea of comparing images](comparison/java/images/how-to-compare-images.png)

## API сравнения изображений Java

Я буду использовать API [GroupDocs.Comparison for Java](https://products.groupdocs.com/comparison/java) для сравнения изображений в этой статье. Этот API поддерживает сравнение изображений JPG, PNG, BMP, DICOM, DCM, DjVu и многих других поддерживаемых форматов файлов.

Вы можете загрузить ZIP-файл с библиотекой JAR, документацией и другими полезными файлами из [раздела загрузок](https://downloads.groupdocs.com/comparison/java) или установить API в свое приложение Java/Kotlin через Maven, Gradle или любой другой инструмент управления проектами, поддерживающий репозитории maven.

---

<details open><summary>Подключить репозиторий GroupDocs</summary><blockquote>
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

---

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

---

### Сравните изображения в Java или Kotlin, чтобы выделить различия

Сравнение двух изображений в Java слишком просто с помощью [GroupDocs.Comparison](https://products.groupdocs.com/comparison) в приложении Java. Следующие шаги объясняют, как мы можем сравнить любые два изображения JPG, PNG, BMP или любое другое изображение. Он успешно обнаруживает изменения и выделяет их в выходном/результирующем изображении.

* Определите первое изображение с помощью класса [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer).
* Добавьте второе изображение, используя метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.io.InputStream...)) объекта Comparer.
* Вызовите метод [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.io.OutputStream)) для сравнения обоих изображений и сохранения результирующего изображения, которое выделяет различия между обоими изображениями.

---

<details open><summary>В приведенном ниже коде показано, как сравнить два изображения в Java. Например, он сравнивает два изображения JPG и сохраняет результат с различиями.</summary><blockquote>
<details open><summary>Ява</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/a95fbd4fb36fc8bf201e3a187a637750.js"></script>

</details>

<details><summary>Котлин</summary>

<script src="https://gist.github.com/groupdocs-comparison-gists/bebea06fbaf649b6582ea86967994193.js"></script>

</details>
</blockquote></details>

---

В этом коде используются изображения, показанные в начале статьи. Изображения слева сравниваются, а результат показан справа, что подчеркивает различия.

### Вывод
В этой статье мы узнали, как сравнить два изображения в Java с помощью API сравнения изображений. Теперь вы можете создать собственное приложение для сравнения изображений, которое может сравнивать изображения и выделять обнаруженные различия для своих пользователей.

Чтобы получить полное представление о возможностях API, вы можете ознакомиться с [документацией](https://docs.groupdocs.com/comparison/java). Вы также можете обратиться в [Бесплатную группу поддержки](https://forum.groupdocs.com/c/comparison) или [Бесплатную группу консультантов](https://groupdocs-free-consulting.github.io), которые даже пишут код чтобы помочь вам понять использование API GroupDocs в соответствии с вашими требованиями.

### Смотрите также

* Как [сравнить файлы](/comparison/java/how-to-compare-files-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить текст, Word или PDF](/comparison/java/how-to-compare-text-word-pdf-in-java-or-kotlin) в Java или Kotlin
* Как [сравнить два или более файлов](/comparison/java/how-to-compare-two-or-more-files-in-java-or-kotlin) в Java или Kotlin
* Как [найти различия в фотографиях](/comparison/java/how-to-spot-photos-differences-in-java-or-kotlin) в Java или Kotlin
* How to [compare any files](/comparison/java/how-to-compare-any-files-using-compose-desktop) using Compose Desktop
