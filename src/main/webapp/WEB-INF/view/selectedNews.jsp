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
        <fmt:message key="selectedNews"/>
    </title>
</head>

<body>


<main role="main">
    <tagFile:header/>

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">
                ${news.title}
            </h1>
        </div>
    </section>

    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card mb-4 box-shadow">
                        <div class="card-body">
                            <p class="card-text">${news.brief}</p>
                            <img class="card-img-top"
                                 data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail"
                                 alt="Card image cap">
                            <p class="card-text">${news.content}</p>
                        </div>
                    </div>
                    <%--<sec:authorize access="hasRole('ROLE_ADMIN')">--%>
                    <p>
                    <form action="/admin/editNewsPage">
                        <input type="hidden" name="newsId" value="${news.newsId}">
                        <input type="submit" class="btn btn-primary btn-md"
                               value="<fmt:message key="editNews"/>">
                    </form>
                    </p>
                    <%--</sec:authorize>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <form modelAttribute="comment" action="/addComment" method="get">
            <input type="hidden" name="newsId" value="${news.newsId}">
            <table border="0">
                <thead>
                <tr>
                    <th><fmt:message key="comment.add"/></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><fmt:message key="comment.Description"/></td>
                    <td>
                        <textarea name="author" cols="100" rows="2" class="form-control mr-sm-2" required>
                    </textarea>
                    </td>
                </tr>
                </tr>
                <td>
                        <textarea name="description" cols="100" rows="5" class="form-control mr-sm-2" required>
                    </textarea>
                </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <br>
                        <input type="submit" class="btn btn-primary btn-md"
                               value="<fmt:message key="comment.add"/>">
                    </td>
                </tr>
                </tbody>
            </table>
        </form>


        <div class="container">
            <form action="/admin/deleteComment" method="get">
                <input type="hidden" name="newsId" value="${news.newsId}">
                <c:forEach items="${news.commentList}" var="comment">
                <div class="comments">
                    <div class="row">
                        <div class="col-md-11">
                            <div class="metadata">
                                <span class="date">${comment.dateCreated}</span>
                            </div>
                            <h3 class="title-comments">
                                    ${comment.author}
                            </h3>
                            <ul class="media-list">
                                <li class="media">
                                    <div class="media-body">
                                        <div class="media-text text-justify">${comment.description}</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                            <%--<sec:authorize access="hasRole('ROLE_ADMIN')">--%>
                        <div class="col-md-1">
                            <input type="checkbox" name="checkedComments" value="${comment.commentId}">
                        </div>
                            <%--</sec:authorize>--%>
                    </div>

                    <hr>
                    </c:forEach>
                    <%--<sec:authorize access="hasRole('ROLE_ADMIN')">--%>
                    <c:if test="${not empty news.commentList}">
                    <div class="float-right">
                        <button type="submit" class="btn btn-danger btn-md"><fmt:message
                                key="comment.delete"/></button>
                    </div>
                    </c:if>
                    <%--</sec:authorize>--%>
            </form>
            <br>
        </div>
    </div>
    </div>
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
<link type="text/css" rel="stylesheet" href="/css/style.css"/>

</body>
</html>



