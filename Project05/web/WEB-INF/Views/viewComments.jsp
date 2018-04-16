
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Comments</title>
    </head>
    <body>
        <h1>Your comments: </h1>
        
        <ul>
        <c:forEach var="theComment" items="${enteredComments}">
            <li><c:out value="Full Comment: ${theComment.comment}" /></li>
            <li><c:out value="Commenter: ${theComment.name}   Email:${theComment.email}   At:${theComment.timeStamp}" /></li>
        </c:forEach>
        </ul>
        
        <a href="/Project05/addcomments">Add a new item</a>
    </body>
</html>
