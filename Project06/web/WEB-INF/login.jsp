<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login Here</h1>


        <c:if test="${not empty error}">      
            <c:out value="${error}" />
            </c:if>

            <form method="POST" action="/Project06/login">
                <input type="text" name="username" placeholder="Username" /> <br>
                <input type="text" name="password" placeholder="Password" /> <br>
                <input type="submit" value="Submit comment" />         
            </form>
    </body>
</html>
