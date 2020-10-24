<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>Document</title>
</head>
<body>
<input type="text" id="category" name="category" value="Категория 1"> (Категория 1, Категория 2)
<button id="button">Получить</button>
<div id="result"></div>
<script>
    $('#button').click(function() {
        $.ajax({
            url: "get-articles.php",
            method: 'POST',
            data: 'category=' + $('#category').val(),
            success: function (result) {
                console.log(result);
                if (result === 'end')
                    $('#result').html('end Articles');
                else {
                    var data = JSON.parse(result);
                    $('#result').html('');
                    $.each(data, function(i, item) {

                        $('#result').append( "<div>Title: " + data[i].article_title +
                            "<br>Description: " + data[i].article_description +
                            "<br>Photo: " + data[i].article_image + "</div>" );
                    });
                }
            }
        });
    });
</script>
</body>
</html>