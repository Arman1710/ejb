<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> <spring:message code="logIn"/></title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/4.1/examples/sign-in/signin.css" rel="stylesheet">

</head>



<body class="text-center">
<form:form method="POST" action="/login" class="form-signin">

    <c:if test="${logout}">
    <div class="alert alert-info" role="alert">
        <spring:message code="successLogout"/>
    </div>
    </c:if>

    <c:if test="${error}">
    <div class="alert alert-danger" role="alert">
        <spring:message code="invalidUsernameOrPassword"/>
    </div>
    </c:if>
    <h1 class="h3 mb-3 font-weight-normal"><spring:message code="logIn"/></h1>
    <div class="form-group">
        <label for="formGroupExampleInput"><spring:message code="username"/></label>
        <input type="text" name="username" class="form-control" id="formGroupExampleInput">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2"><spring:message code="password"/></label>
        <input type="password" name="password" class="form-control" id="formGroupExampleInput2">
    </div>

    <button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="logIn"/></button>
    <br>
    <h4 class="text-center"><a href="/registrationPage"><spring:message code="registration"/></a></h4>
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








