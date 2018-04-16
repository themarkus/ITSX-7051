<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a comment</title>
    </head>
    <body>
        <h1>Enter comment here</h1>


        <c:if test="${not empty error}">      
            <c:out value="${error}" />
            </c:if>

            <form method="POST" action="/Project05/addcomments">
                <input type="text" name="commentText" placeholder="Enter comment here" /> <br>
                <input type="text" name="name" placeholder="Enter your name here (Optional)" /> <br>
                <input type="text" name="email" placeholder="Enter your email address here (Optional)" /> <br>
                <input type="submit" value="Submit comment" />         
            </form>
    </body>
</html>
