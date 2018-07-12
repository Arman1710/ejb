<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><spring:message code="registration"/></title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/4.1/examples/sign-in/signin.css" rel="stylesheet">

</head>


<body class="text-center">

<form:form modelAttribute="user" method="POST" action="/registration" class="form-signin">
    <h1 class="h3 mb-3 font-weight-normal"><spring:message code="logIn"/></h1>
    <spring:bind path="username">
        <input name="username" type="text" class="form-control" placeholder="<spring:message code="username"/>" required
               autofocus>
        <div style="color:red">
            <form:errors path="username"/>
        </div>
    </spring:bind>

    <spring:bind path="password">
        <input name="password" type="password" class="form-control" placeholder="<spring:message code="password"/>"
               required>
        <div style="color:red">
            <form:errors path="password"/>
        </div>
    </spring:bind>

    <spring:bind path="confirmPassword">
        <input name="confirmPassword" type="password" class="form-control"
               placeholder="<spring:message code="confirmPassword"/>" required>
        <div style="color:red">
            <form:errors path="confirmPassword"/>
        </div>
    </spring:bind>

    <button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="registration"/></button>
    <br>
    <h4 class="text-center"><a href="/login"><spring:message code="logIn"/></a></h4>
    <p class="mt-5 mb-3 text-muted">&copy;2018</p>
</form:form>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
</html>








