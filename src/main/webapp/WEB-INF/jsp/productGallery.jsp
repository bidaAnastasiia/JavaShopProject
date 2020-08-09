<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html data-wf-page="5ea837e8c81001b668dffd4a" data-wf-site="5ea837e8c8100167b2dffd49">
<head>
    <meta charset="utf-8">
    <title>All products</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <link href="/resources/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/menu.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/gallery.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/split-opl.webflow.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script type="text/javascript">WebFont.load({  google: {    families: ["Inter:regular,600","Lora:regular"]  }});</script>
    <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
    <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
    <link href="/resources/images/favicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="/resources/images/shop/1.jpg" rel="apple-touch-icon">
    <style type="text/css">

    </style>
</head>
<body class="body"  >
<div  >
    <nav>
        <ul class="primary">
            <li>
                <a href="/" >Main Page</a>
            </li>
            <li>
                <a href="" >Women</a>
                <ul class="sub">
                    <li><a href="/products/woman/outwear">Outerwear</a></li>
                    <li><a href="/products/woman/tops">Tops</a></li>
                    <li><a href="/products/woman/bottoms">Bottoms</a></li>
                    <li><a href="/products/woman/dresses_jumpsuits">Dresses & Jumpsuits</a></li>
                    <li><a href="/products/woman/jeans">Jeans</a></li>
                    <li><a href="/products/woman/bags">Bags</a></li>
                    <li><a href="/products/woman/accessories">Accessories</a></li>
                </ul>
            </li>
            <li>
                <a href="" >Men</a>
                <ul class="sub">
                    <li><a href="/products/man/outwear">Outerwear</a></li>
                    <li><a href="/products/man/tops">Tops</a></li>
                    <li><a href="/products/man/bottoms">Bottoms</a></li>
                    <li><a href="/products/man/jeans">Jeans</a></li>
                    <li><a href="/products/man/bags">Bags</a></li>
                    <li><a href="/products/man/accessories">Accessories</a></li>
                </ul>
            </li>
            <li>
                <a href="" >Girls</a>
                <ul class="sub">
                    <li><a href="">Outerwear</a></li>
                    <li><a href="">Tops</a></li>
                    <li><a href="">Bottoms</a></li>
                    <li><a href="">Dresses & Jumpsuits</a></li>
                    <li><a href="">Jeans</a></li>
                    <li><a href="">Bags</a></li>
                    <li><a href="">Accessories</a></li>
                </ul>
            </li>
            <li>
                <a href="" >Boys</a>
                <ul class="sub">
                    <li><a href="">Outerwear</a></li>
                    <li><a href="">Tops</a></li>
                    <li><a href="">Bottoms</a></li>
                    <li><a href="">Jeans</a></li>
                    <li><a href="">Bags</a></li>
                    <li><a href="">Accessories</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
<ul class="grid" id = "ul">

</ul>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.4.1.min.220afd743d.js?site=5ea837e8c8100167b2dffd49" type="text/javascript" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="/resources/js/webflow.js" type="text/javascript"></script>
<!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
<script>
    function createList() {
        var ul = document.getElementById('ul');
        var s = ${products.size()};
        <c:forEach var="prod" items="${products}">

        console.log('for');
        var newli = document.createElement('li');
        var figure = document.createElement('figure')
        figure.className = "grid__figure";
        var figcaption = document.createElement('figcaption');
        var name = "${prod.name}";
        //figcaption.textContent = name;

        var a = document.createElement('a');
        var linkText = document.createTextNode(name);
        a.appendChild(linkText);
        a.title = name;
        a.href = "/product/${prod.id}";
        figcaption.appendChild(a);

        var figcaptionPrice = document.createElement('figcaption');
        var price = "${prod.price} $";
        figcaptionPrice.textContent = price;
        var image = new Image();
        image.src = '/resources/images/shop/${prod.id}.jpg';

        newli.appendChild(figure);
        figure.appendChild(image);
        figure.appendChild(figcaption);
        figure.appendChild(figcaptionPrice);
        ul.appendChild(newli);

        </c:forEach>
    }
    window.onload = createList();
</script>
</body>
</html>