<%--
  Created by IntelliJ IDEA.
  User: ranchayasambath
  Date: 4/11/22
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    css --%>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing ${selectedAd.title}'s Details"/>
    </jsp:include>
    <%--font google--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&family=Codystar&family=Indie+Flower&family=Orbitron:wght@500&family=Rajdhani&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../CSS/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container min-vh-100 d-flex justify-content-center align-items-center">
    <div class="row">
        <div id="card-id" class="card justify-content-center align-items-center">
            <div class="card-img-top">
                <img src="../../asset/Adsimg/droid.jpeg" class="  rounded mx-auto d-block" width="75%" height="auto">
            </div>
            <div>
                <ul>
                    <li><h5> Galactic Credits ${selectedAd.price}</h5></li>
                    <li><a href="adlisterProfile?user=${selectedAd.userId}">
                        <button class="btn-warning">View Trader</button>
                    </a></li>
                    <li><p class="card-text">Description : ${selectedAd.description}</p></li>
                </ul>
            </div>
        </div>

    </div>
</div>


</body>
</html>
