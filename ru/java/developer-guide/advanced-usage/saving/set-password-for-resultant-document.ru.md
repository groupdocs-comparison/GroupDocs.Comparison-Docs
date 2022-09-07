---
id: установить пароль для результирующего документа
url: comparison/java/set-password-for-resultant-document
title: "Установить пароль для результирующего документа"
weight: 2
description: "В этой статье объясняется, как установить пароль документа после сравнения файлов в ваших Java-приложениях с помощью GroupDocs.Comparison для Java."
keywords: "Сравните документ и защитите паролем"
productName: GroupDocs.Comparison для Java
hideChildren: False
структурированные данные:
шоуОрганизация: True
заявление:
название: Инструмент сравнения документов
        description: "Продукт позволяет сравнивать Pdf, Word, Excel, PowerPoint, AutoCad, Image, Code и многие другие форматы файлов. API сравнения также поддерживает принятие или отклонение изменений, извлечение информации о документе и создание отчета о сравнении."
код продукта: сравнение
Платформа продукта: Java
как:
name: Как установить пароль для результирующего документа
        description: "Узнайте, как установить пароль для результирующего документа"
шаги:
- имя: Создать объект «Сравнение»
текст: создать объект класса «Comparer», передав исходный документ в качестве аргумента конструктора
- имя: добавить один или несколько целевых документов
текст: используйте метод «добавить», чтобы добавить один или несколько документов для сравнения
- имя: Настроить объект параметров сравнения
текст: создайте объект класса «CompareOptions» и вызовите его метод «setPasswordSaveOption(PasswordSaveOption.User)», чтобы включить соответствующие настройки.
- имя: Настроить объект сохранения документа
текст: создайте объект класса «SaveOptions» и используйте его метод «setPassword()» для передачи пароля результирующего документа.
- name: Запустить процесс сравнения
текст: вызовите метод «сравнить», чтобы запустить процесс сравнения, передавая параметры сравнения в качестве второго аргумента и сохраняя параметры в качестве третьего аргумента.
---
**[GroupDocs.Comparison](https://products.groupdocs.com/comparison/java)** позволяет защитить результирующий документ паролем.

Ниже приведены шаги для защиты результирующего документа:
* Создать объект [Comparer](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer) с путем или потоком исходного документа;
* Вызовите метод [add](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#add(java.lang.String)) и укажите путь или поток целевого документа.
* Создать объект [CompareOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) с
* Установите свойство [PasswordSaveOption](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions#setPasswordSaveOption(int)) для [CompareOptions](https://apireference.groupdocs.com /comparison/java/com.groupdocs.comparison.options/CompareOptions) объект [PasswordSaveOption.User](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/PasswordSaveOption#User );
* Создайте объект [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) и установите его с помощью [Пароля](https://apireference.groupdocs.com/ сравнение/java/com.groupdocs.comparison.options.save/SaveOptions#setPassword(java.lang.String)) установить желаемый пароль для результирующего документа;
* Вызовите [compare](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison/Comparer#compare(java.lang.String,%20com.groupdocs.comparison.options.save.SaveOptions,% 20com.groupdocs.comparison.options.CompareOptions)) и передать [SaveOptions](https://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/SaveOptions) и [CompareOptions](https ://apireference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/CompareOptions) возражает против метода;
    



В следующем фрагменте кода показано, как сравнивать документы и защищать полученный документ паролем.

<script src="https://gist.github.com/groupdocs-comparison-gists/c0c27c8c12411d3c228f9df899b4fc92.js"></script>

## Дополнительные ресурсы

### Примеры GitHub
Вы можете легко запустить приведенный выше код и увидеть функцию в действии в наших примерах GitHub:

* [GroupDocs.Comparison для примеров Java, плагинов и демонстрации] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java)
* [GroupDocs.Comparison для примеров, плагинов и демонстраций .NET] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET)
* [Сравнение документов для современного примера пользовательского интерфейса Java App Dropwizard] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Dropwizard)

* [Сравнение документов для примера пользовательского интерфейса Java Spring] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-Java-Spring)

* [Сравнение документов для примера пользовательского интерфейса .NET MVC] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-MVC)

* [Сравнение документов для современного примера пользовательского интерфейса .NET App WebForms] (https://github.com/groupdocs-comparison/GroupDocs.Comparison-for-.NET-WebForms)
    



### Бесплатное онлайн-приложение
Наряду с полнофункциональной библиотекой Java мы предоставляем простые, но мощные бесплатные приложения.
Вы можете сравнить свои документы DOC или DOCX, XLS или XLSX, PPT или PPTX, PDF, EML, EMLX, MSG и другие документы с помощью бесплатного онлайн-приложения **[приложение для сравнения GroupDocs] (https://products.groupdocs.app/ сравнение)**.

