<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        The result of the last flip is: ${flipResult.lastFlip}<br>
        ...and your guess was: ${flipResult.guess}<br>
        ...so was your last guess correct?: ${flipResult.goodGuess}<br>
        <p>The total number of heads in this session: ${headCounter.count} <br>
            The total number of tails in this session: ${tailCounter.count} <br>
            Your number of correct guesses in this session: ${winCounter.count} 
        </p>
        
        <a href="/Project04/">Flip Again</a>
        <a href="/Project04/gameover">End Game</a>
    </body>
</html>
