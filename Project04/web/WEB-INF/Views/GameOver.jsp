
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Game over, man.  Game over.</title>
    </head>
    <body>
        <img src = "/Project04/Images/GameOver.jpg" style="float: left;">
        <p>The total number of heads in this session was ${headCounter.count}</p>
        <p>The total number of tails in this session was ${tailCounter.count}</p>
        
        <a href="/Project04/reset">Start over</a>
    </body>
</html>
