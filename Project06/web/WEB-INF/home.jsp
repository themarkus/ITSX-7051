<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter a new item</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${user != null}">
                <h2>Logged in as <b><c:out value="${user.username}"></c:out></b></h2>
                    <h3>Your items: </h3>
                    <ul>
                    <c:forEach var="theItem" items="${enteredItems}">
                        <li><c:out value="${theItem.item}" /></li>
                        </c:forEach>
                </ul> 


                <a href="/Project06/item">Create new items</a><br>
                <a href="/Project06/logout">Logout</a><br>
                <a href="/Project06/">Default</a><br>
            </c:when>

            <c:otherwise>
                <h2>You must login first before adding or viewing items</h2>
                <a href="/Project06/login">Go to Login Page</a><br>
                <a href="/Project06/">Default</a><br>
            </c:otherwise>
        </c:choose>  


    </body>
</html>
