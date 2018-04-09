<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mark's Flip Game</title>
    </head>
    <body>
        <h2>Chose your guess and then hit the Flip button to flip the coin.</h2>
        <form method="POST" action="flip">
            <input type="radio" name="coinflip" value="Heads">I guess heads<br>
            <input type="radio" name="coinflip" value="Tails">I guess tails<br>
            <input type="submit" value="Flip">
        </form>

    </body>
</html>
