<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><jsp:invoke fragment="header"/></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img src="${pageContext.request.contextPath}/images/FOGLogo1.jpg" width="150px;" class="img-fluid"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link"
                       href="${pageContext.request.contextPath}/">${sessionScope.user.username}</a>
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/profile.jsp">Profil</a>
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/aboutus.jsp">Om os</a>
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/shoppingcart">Indkøbskurv
                        (${sessionScope.cartsize})</a>
                    <c:if test="${sessionScope.user == null }">
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/login.jsp">Login</a>
                    </c:if>
                    <c:if test="${sessionScope.user != null }">
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/logout">Log out</a>
                    </c:if>
                </div>
            </div>
        </div>
    </nav>
</header>

<div id="body" class="container mt-4" style="min-height: 400px;">
    <h1><jsp:invoke fragment="header"/></h1>
    <jsp:doBody/>
</div>

<!-- Footer -->
<div class="container mt-3">
    <hr/>
    <div class="row mt-4">
        <div class="col">
            <a href="aboutus.jsp">Kundeservice</a><br>
            <a href="aboutus.jsp">Kontakt Fog</a><br>
            <a href="aboutus.jsp">Ofte stillede spørgsmål</a><br>
            <a href="aboutus.jsp">Købs- og leveringsvilkår online</a><br>
            <a href="aboutus.jsp">Fortrydelse og returnering</a><br>
            <a href="aboutus.jsp">Fragt</a><br>
            <a href="aboutus.jsp">Lån en trailer</a><br>
            <a href="aboutus.jsp">Fog gavekort</a><br>
        </div>
        <div class="col">
            <a href="aboutus.jsp">Om Fog</a><br>
            <a href="aboutus.jsp">Åbningstider</a><br>
            <a href="aboutus.jsp">Byg bæredygtigt</a><br>
            <a href="aboutus.jsp">Udlejning</a><br>
            <a href="aboutus.jsp">Fog gavekort</a><br>
            <a href="aboutus.jsp">Fogs Fond</a><br>
            <a href="aboutus.jsp">Karriere i Fog</a><br>
            <a href="aboutus.jsp">Bliv kunde i Fog</a><br>
            <a href="aboutus.jsp">Karriere i Fog</a><br>
            <a href="aboutus.jsp">Persondatapolitik</a><br>
            <a href="aboutus.jsp">Cookies</a><br>

        </div>

        <div class="col">
            <a href="aboutus.jsp">Aktuelt</a><br>
            <a href="aboutus.jsp">Aviser og kataloger</a><br>
            <a href="aboutus.jsp">Tilmeld nyhedsbrev</a><br>
            <a href="aboutus.jsp">Brands</a><br>
            <a href="aboutus.jsp">LinkedIn</a><br>
            <a href="aboutus.jsp">Instagram</a><br>
            <a href="aboutus.jsp">Facebook</a><br>

        </div>

        <div class="col">
            <div class="col">
<%--                <jsp:invoke fragment="footer"/>--%>

            </div>
            Johannes Fog A/S <br>
            Firskovvej 20<br>
            2800 Lyngby<br>

            CVR-nr. 16314439
        </div>
    </div>

</div>

</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>
