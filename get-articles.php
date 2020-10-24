<?php
if (isset($_POST['category'])) {
    //  фильтрация входных данных
    $category = filter_var($_POST['category'], FILTER_SANITIZE_STRING);
    //  подключение к БД
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "pr_reg";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        exit("Connection failed: " . $e->getMessage());
    }

    //  выборка значений соответствующих названию категории
    $stmt = $conn->prepare('SELECT * FROM articles, categories WHERE articles.category_id=categories.id 
                                    AND categories.title = :category ORDER BY articles.created_at DESC LIMIT 5');
    $stmt->execute(['category' => $category]);

    if ($stmt->rowCount() > 0) {
        $article = [];
        while ($row = $stmt->fetch(PDO::FETCH_LAZY)) {
            //  сбор массива статей
            $article[] = [
                "article_title" => $row['title'],
                "article_description" => $row['description'],
                "article_image" => $row['image'],
            ];
        }
        $json = json_encode($article);
        echo $json;
    } else {
        // если статей с такой категорией нет - end
        echo 'end';
    }
}
