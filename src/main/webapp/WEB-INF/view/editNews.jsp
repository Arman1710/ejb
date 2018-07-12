<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tagFile" tagdir="/WEB-INF/tags" %>

<c:choose>
    <c:when test="${sessionScope.locale.toString() == 'ru_KZ'}">
        <fmt:setLocale value="ru_KZ"/>
    </c:when>
    <c:otherwise>
        <fmt:setLocale value="en_US"/>
    </c:otherwise>
</c:choose>
<fmt:setBundle basename="locale"/>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title><fmt:message key="editNews"/></title>
</head>
<body>
<tagFile:header/>

<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">
            <fmt:message key="editNews"/>
        </h1>
    </div>
</section>

<main role="main">
    <div class="container">
        <form action="/admin/editNews" method="post">
            <table border="0">
                <thead>
                <tr>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <br>
                    <textarea name="title" cols="30" rows="1" class="form-control mr-sm-2" placeholder="<fmt:message key="title"/>" required>${news.title}</textarea>
                </tr>
                <tr>
                    <br>
                    <textarea name="brief" cols="30" rows="3" class="form-control mr-sm-2" placeholder="<fmt:message key="brief"/>" required>${news.brief}</textarea>
                </tr>
                <tr>
                    <br>
                    <textarea name="content" cols="30" rows="10" class="form-control mr-sm-2" placeholder="<fmt:message key="content"/>" required>${news.content}</textarea>
                </tr>
                <tr>
                    <br>
                    <td>
                        <button type="submit" class="btn btn-primary btn-sm "><fmt:message key="submit"/>
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>

    </div>
</main>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
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
