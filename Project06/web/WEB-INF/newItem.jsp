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
                <h3>Logged in as <b><c:out value="${user.username}"></c:out></b></h3>
                <h3>Enter item here</h3>


                <c:if test="${not empty error}">      
                    <c:out value="${error}" />
                </c:if>

                <form method="POST" action="/Project06/item">
                    <input type="text" name="itemText" placeholder="Enter item here" /> <br>
                    <input type="submit" value="Submit item" /><br><br><br>       
                </form>

                <a href="/Project06/home">View items</a><br>
                <a href="/Project06/logout">Logout</a><br>
            </c:when>

            <c:otherwise>
                <h2>You must login first before adding or viewing items</h2>
                <h3>Logged in as <b><c:out value="${user}"></c:out></b></h3>
                <a href="/Project06/login">Go to Login Page</a><br>
                <a href="/Project06/">Default</a><br>
            </c:otherwise>
        </c:choose>  


    </body>
</html>