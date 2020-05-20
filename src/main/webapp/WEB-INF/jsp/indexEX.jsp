<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Main Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/4.4/examples/sign-in/signin.css" rel="stylesheet">
    <link href="/resources/css/index.css" type="text/css" rel="stylesheet">
</head>
<body class="text-center" data-gr-c-s-loaded="true">
<div class="text-center" style="margin: auto;">
    <h1 class="h3 mb-3 font-weight-normal">Welcome</h1>
    <h3>${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="!isAuthenticated()">
       <a href="/login"> <button class="btn btn-lg btn-primary btn-block">Sign In</button></a>
        <a href="/registration"><button class="btn btn-lg btn-primary btn-block">Sign Up</button></a>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <a href="/logout"><button class="btn btn-lg btn-primary btn-block">Exit</button></a>
    </sec:authorize>
    <a href="/news"><button class="btn btn-lg btn-primary btn-block">News (only for users)</button></a>
    <a href="/product"><button class="btn btn-lg btn-primary btn-block">Product</button></a>
    <a href="/admin"><button class="btn btn-lg btn-primary btn-block">Users (only for admin)</button></a>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></body>
</html>
