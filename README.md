## Тестовое задание на позицию PHP-программист

Необходимо добавить новый раздел Статьи на сайте. Статьи распределены по категориям, обязательно содержат заголовок, текст статьи, превью (изображение).

Ниже приведена часть кода, которую передал frontend-разработчик:

```````javascript
ajax.run({
    url: <api-url>,
    method: 'POST',
    data: `category= ${data}`,
    callback: function (response) {

    // Response values: 
    // response === ‘end’ - нет статей в заданной категории
    // response : [ {title: ‘article_title’, description: ‘article_description’, image: ‘article_image’
    } … ] 

    if (response === ‘end') {
    endArticles();
    return;
    }

    renderArticles(JSON.parse(response));
    });
```````

На стороне backend требуется:
- спроектировать БД для хранения статей;
- передать на фронт 5 последних статей из заданной категории в формате json.

Результат выполнения задания: дамп БД, php-код.

    index.php - примерный front (для тестирования)
    get-articles.php - backend
    pr_reg.sql - дамп БД
