<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <img src="../../asset/jawa_facial.png" width="50px" height="50px" alt="Jawa.jpg">
            <a class="navbar-brand" href="../../index.jsp"  style = "font-family:'Orbitron',sans-serif; font-size: 25px; color:#483112">Jawa Droids Trading co.</a>
        </div>

        <form action="<c:url value="http://localhost:8080/ads"/>" method="get">
            <div class="form-group d-flex justify-content-center align-item-center" >
                <label for="search">Search by</label>
                <select class="form-control" name="searchType" id="search">
                    <%--<option  value="AdId">Ad Id</option>--%>
                    <option  value="AdTitle">Title</option>
                    <option  value="Username">User</option>
                    <option  value="Category">Categories</option>
                </select>

                    <textarea class="form-control mr-sm-2" name="search" placeholder="search" id="Search_box" rows="1"></textarea>
                </div>
            <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Search</button>
        </form>

        <%--<form class="form-inline ">
            <div class="dropdown ">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                    Search by...
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li class="dropdown-item" value="searchById">Search By ID</li>
                    <li class="dropdown-item" value="searchByTitle">Search By Title</li>
                </div>
            </div>
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>--%>
<c:choose>
        <c:when test="${sessionScope.user != null}">
        <ul class="nav navbar-nav navbar-right">
            <li> <a href="<c:url value="http://localhost:8080/profile"/>"><c:out value="${sessionScope.user.username}" /></a></li>
            <li> <a href="<c:url value="http://localhost:8080/logout"/>">Logout</a></li>
        </ul>
        </c:when>
<c:otherwise>
        <ul class="nav navbar-nav navbar-right">
            <li> <a href="<c:url value="http://localhost:8080/login"/>">Login</a></li>
            <li> <a href="<c:url value="http://localhost:8080/register"/>">Sign up</a></li>
        </ul>
</c:otherwise>
    </c:choose>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
