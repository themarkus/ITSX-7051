<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Goals:</h1>
        <ul>
            <li>Implement login and logout</li>
            <li>Implement protected pages</li>
            <li>Use password hashing</li>
        </ul>

        <h1>Requirements:</h1>

        <h2>Create a blog/personal twitter/link farm </h2>
        <ul>
            <li>Your model should have a text, image and/or link that is displayed to the user</li>
            <li>You should use a model object and a manager object</li>
            <li>Referred to is ITEM below</li>
        </ul>
        <h2><a href="/Project06/home">/home</a></h2>
        <ul>
            <li>The main page must display a list of ITEMs </li>
            <li>If the site owner is not logged in, there should be a link to login </li>
            <li>If the site owner is logged in, there should be a link to logout</li>
            <li>If the site owner is logged in, there should be a link to a page to create a new ITEM</li>
        </ul>
        <h2><a href="/Project06/login">/login</a></h2>
        <h3>Usr/Pwd = RoyBaty/IWantMoreLife</h3>
        <ul>
            <li>Allow the user to enter a name and password</li>
            <li>If entered correctly, log the user in and go to the main page</li>
            <li>If entered incorrectly, display an error message</li>
            <li>Create a UserManager object to test the login/password</li>
            <li>You can hard-code the username and password, but the password must be hashed</li>
            <li>Your login method should return a User model object and store it in the session</li>
        </ul>

        <h2><a href="/Project06/logout">/logout</a></h2>
        <ul>
            <li>The logout page should invalidate the http session and redirect to /home</li>
        </ul>

        <h2><a href="/Project06/item">/item</a></h2>
        <ul>
            <li>The new ITEM page should only be accessible if the user is logged in</li>
            <li>GET should present a form to create a new ITEM ++Added<</li>
            <li>POST should accept the form parameters and add the new ITEM to the list of item</li>
            <li>Use the redirect-after-POST pattern for good data</li>
        </ul>
        <h2>Bonus Challenges:</h2>
        <ul>
            <li>Use salted passwords</li>
        </ul>



    </body>
</html>
