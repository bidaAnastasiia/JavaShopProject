<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html data-wf-page="5ea837e8c81001b668dffd4a" data-wf-site="5ea837e8c8100167b2dffd49">
<head>
    <meta charset="utf-8">
    <title>Main page</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <link href="/resources/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/button.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/menu.css" rel="stylesheet" type="text/css">
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
        #imgbackground{
            background-image: url('/resources/images/background1.jpg');
            position: relative;
        }
        #contentid{
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

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
                <a href="" >Men</a>
                <ul class="sub">
                    <li><a href="">Outerwear</a></li>
                    <li><a href="">Tops</a></li>
                    <li><a href="">Bottoms</a></li>
                    <li><a href="">Jeans</a></li>
                    <li><a href="">Bags</a></li>
                    <li><a href="">Accessories</a></li>
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
<div id = "imgbackground" data-w-id="b84f5156-c6e2-fb1d-6606-98a08030a472"  class="image">
    <div id = "contentid" data-w-id="3fd5aeb3-22da-ed60-7286-0d11f16597d3" class="content">
        <h1 class="tagline"><strong class="bold-text">Nice to see you!</strong></h1>
        <h3>${pageContext.request.userPrincipal.name}</h3>
        <sec:authorize access="!isAuthenticated()">
            <a href="/login" class="btn btn-sm animated-button gibson-one">Sign In</a>
            <a href="/registration" class="btn btn-sm animated-button gibson-two">Sign Up</a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="/logout" class="btn btn-sm animated-button gibson-three">Exit</a>
        </sec:authorize>

    </div>
</div>

<div data-w-id="3fd5aeb3-22da-ed60-7286-0d11f16597d3" style="opacity:0" class="content">
</div>

<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.4.1.min.220afd743d.js?site=5ea837e8c8100167b2dffd49" type="text/javascript" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="/resources/js/webflow.js" type="text/javascript"></script>
<!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>