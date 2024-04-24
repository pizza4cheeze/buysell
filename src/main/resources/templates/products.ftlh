<!DOCTYPE html>
<html>
<head>
    <title>Главная страница</title>
</head>
<body>
    <h1>BySell</h1><hr>
    <form action="/" method="post">
        Поиск по названию объявления: <input type="text" name="title"><br>
        <input type="submit" value="Поиск"/>
    </form>
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price} RUB | <a href="/product/${product.id}">Подробнее</a></p>
        </div>
        <#else>
        <p>Товаров нет</p>
    </#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    Название объявления: <input type="text" name="title"/><br>
    Описание объявления: <input type="text" name="description"/><br>
    Цена: <input type="number" name="price"/><br>
    Город: <input type="text" name="city"/><br>
    Имя автора: <input type="text" name="author"/><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>
