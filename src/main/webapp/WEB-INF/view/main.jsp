<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tagFile" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

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
    <title>
        <fmt:message key="mainPage"/>
    </title>
</head>
<body>
<tagFile:header/>
<main role="main">
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3"><fmt:message key="mainPage"/></h1>
            </div>
        </div>
    <form action="/admin/deleteNews" method="get">
        <div class="row">
            <div class="col-1">
                <div class="container">
                    <p class="float-left">
                        <%--<sec:authorize access="hasRole('ROLE_ADMIN')">--%>
                            <a class="btn btn-primary btn-md" href="/admin/addNewsPage" role="button"><fmt:message
                                    key="addNews"/></a><br>
                            <br>
                            <a>
                                <button type="submit" class="btn btn-primary btn-md"><fmt:message
                                        key="removeNews"/></button>
                            </a>
                        <%--</sec:authorize>--%>
                    </p>
                </div>
            </div>
            <div class="col-11">
                <div class="container">
                    <div class="row">
                        <c:forEach items="${newsList}" var="news">
                            <div class="col-12">
                                <h2>${news.title}</h2>

                                <p>${news.brief}</p>

                                <p class="float-right"><a class="btn btn-success"
                                                          href="/selectedNews?newsId=${news.newsId}"
                                                          role="button"><fmt:message key="open"/></a>
                                    <input type="checkbox" name="checkedNews" value="${news.newsId}">
                                <hr>
                                </p>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <hr>
            </div>
        </div>
    </form>
</main>
<footer class="text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>

    </div>
</footer>

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

<script src="https://getbootstrap.com/docs/4.1/assets/js/vendor/popper.min.js"></script>
<script src="https://getbootstrap.com/docs/4.1/dist/js/bootstrap.min.js"></script>
<script src="https://getbootstrap.com/docs/4.1/assets/js/vendor/holder.min.js"></script>

</body>
</html>
