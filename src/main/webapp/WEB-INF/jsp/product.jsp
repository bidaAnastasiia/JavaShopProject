<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html data-wf-page="5ea837e8c81001b668dffd4a" data-wf-site="5ea837e8c8100167b2dffd49">
<head>
    <meta charset="utf-8">
    <title>Product</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <link href="/resources/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/sizelist.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/split-opl.webflow.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script type="text/javascript">WebFont.load({  google: {    families: ["Inter:regular,600","Lora:regular"]  }});</script>
    <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
    <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
    <link href="/resources/images/favicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="/resources/images/shop/1.jpg" rel="apple-touch-icon">
    <style type="text/css">
        body {
            -webkit-font-smoothing: antialiased;
        }
        #imgproduct{
            background-image: url('/resources/images/shop/${product.id}.jpg');
        }
        @media screen and (min-width: 1200px) {
            #imgproduct{
                background-size: 75%;
            }
        }
        label.disabled{
            color: gray;
            text-decoration: line-through;
        }
    </style>
</head>
<body class="body"  >
<div class="columns w-row">
    <div class="leftcontent w-col w-col-6 w-col-stack">
        <div id="imgproduct" data-w-id="b84f5156-c6e2-fb1d-6606-98a08030a472"  style="opacity:0;" class="image" ></div>
    </div>
    <div class="rightcontent">
        <div data-w-id="3fd5aeb3-22da-ed60-7286-0d11f16597d3" style="opacity:0" class="content">
            <div class="name">${product.price} $</div>
            <h1 class="tagline"><strong class="bold-text">${product.name} </strong></h1>
            <p class="bio">${product.description} </p>
            <section class="dark">
                <span class="text">Size:</span>
                <label id="xsLabel">
                    <input type="radio" id = "xs" name="dark" checked>
                    <span class="design"></span>
                    <span class="text">XS</span>
                </label>
                <label id="sLabel">
                    <input type="radio" id = "s" name="dark">
                    <span class="design"></span>
                    <span class="text">S</span>
                </label>
                <label id="mLabel">
                    <input type="radio" id = "m" name="dark">
                    <span class="design"></span>
                    <span class="text">M</span>
                </label>
                <label id="lLabel">
                    <input type="radio" id = "l" name="dark">
                    <span class="design"></span>
                    <span class="text">L</span>
                </label>
                <label id="xlLabel">
                    <input type="radio" id = "xl" name="dark">
                    <span class="design"></span>
                    <span class="text">XL</span>
                </label>
            </section>
            <a href="#" class="btn btn-sm animated-button gibson-four">Buy</a>
        </div>
    </div>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.4.1.min.220afd743d.js?site=5ea837e8c8100167b2dffd49" type="text/javascript" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="/resources/js/webflow.js" type="text/javascript"></script>
<script>
    function checkSize() {

        if(${product.countXS} === 0) {
            document.getElementById("xs").disabled = true;
            document.getElementById("xsLabel").classList.add("disabled");
        }
        if(${product.countS} === 0){
            document.getElementById("s").disabled = true;
            document.getElementById("sLabel").classList.add("disabled");
        }
        if(${product.countM} === 0){
            document.getElementById("m").disabled = true;
            document.getElementById("mLabel").classList.add("disabled");
        }
        if(${product.countL} === 0){
            document.getElementById("l").disabled = true;
            document.getElementById("lLabel").classList.add("disabled");
        }
        if(${product.countXL} === 0){
            document.getElementById("xl").disabled = true;
            document.getElementById("xlLabel").classList.add("disabled");
        }
    }
    window.onload = checkSize();
</script>
<!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>