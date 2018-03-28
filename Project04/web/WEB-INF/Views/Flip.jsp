<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mark's Flip Game</title>
    </head>
    <body>
        <h2>Hit the Flip button to flip the coin.  You may also guess.</h2>
        <form method="POST" action="flip">
            <input type="radio" name="movie" value="Heads">Heads<br>
            <input type="radio" name="movie" value="Tails">Tails<br>
            <input type="submit" value="Flip">
        </form>

    </body>
</html>
