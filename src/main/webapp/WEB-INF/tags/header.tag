<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${sessionScope.locale.toString() == 'ru_KZ'}">
        <fmt:setLocale value="ru_KZ"/>
    </c:when>
    <c:otherwise>
        <fmt:setLocale value="en_US"/>
    </c:otherwise>
</c:choose>
<fmt:setBundle basename="locale"/>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">

            <ul class="navbar-nav mr-auto">

                <li class="nav-item">
                    <a class="nav-link" href="/locale?locale=en"><fmt:message key="locale.english"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/locale?locale=ru"><fmt:message key="locale.russian"/></a>
                </li>
            </ul>

            <form id="logoutForm" method="POST" action="/logout">
                <button type="submit" class="btn btn-primary btn-sm"><fmt:message key="logOut"/></button>
            </form>
        </div>
    </nav>
</header>