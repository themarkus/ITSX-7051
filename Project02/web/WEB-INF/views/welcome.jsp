<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mark's Sci-Fi Movie Opinions</title>
    </head>
    <body>
        <h1>What recent sci-fi movies were good and which were bad</h1>
        <h2>Please choose a movie from the list below and I will tell you if it was good or bad.</h2>
        <form method="POST" action="choice">
            <input type="radio" name="movie" value="Jedi">The Last Jedi<br>
            <input type="radio" name="movie" value="Bladerunner">Bladerunner 2049<br>
            <input type="radio" name="movie" value="Force">The Force Awakens<br>
            <input type="radio" name="movie" value="Machina">Ex Machina<br>
            <input type="submit" value="Submit">
        </form>

    </body>
</html>
