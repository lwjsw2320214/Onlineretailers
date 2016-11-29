<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>官网后台 | 用户登陆</title>

    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="/static/css/animate.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">

</head>
<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">MB</h1>

        </div>
        <h3>欢迎使用!</h3>
        <p>
        </p>
        <form:form action="/login" modelAttribute="loginUser">
            <div class="form-group">
                <form:input path="userName"  cssClass="form-control" placeholder="用户名"/>
                <%--<input type="email" class="form-control" placeholder="用户名" required="">--%>
            </div>
            <div class="form-group">
                <form:password path="password" cssClass="form-control" placeholder="密码"/>
                <%--<input type="password" class="form-control" placeholder="密码" required="">--%>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登录</button>
            <p><form:errors path="userName" cssClass="alert-danger"/></p>
            <p><form:errors path="password" cssClass="alert-danger"/></p>

        </form:form>
    </div>
</div>

<!-- Mainly scripts -->
<script src="/static/js/jquery-2.1.1.js"></script>
<script src="/static/js/bootstrap.min.js"></script>

</body>
</html>
