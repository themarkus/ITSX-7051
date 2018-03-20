<%@page import="java.util.Date"%>
<%@ page import = "java.io.*,java.util.*" %>
<%
    // Get session creation time.
    Date createTime = new Date(session.getCreationTime());

    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());

   Integer appScopeCount = (Integer) application.getAttribute("hitCounter");
    if (appScopeCount == null || appScopeCount == 0) {
        /* First ever visit */
        appScopeCount = 1;
    } else {
        /* return visit */
        appScopeCount += 1;
    }
     Integer sessionScopeCount = (Integer) session.getAttribute("hitCounter2");
    if (sessionScopeCount == null || sessionScopeCount == 0) {
        /* First visit this session*/
        sessionScopeCount = 1;
    } else {
        /* return visit */
        sessionScopeCount += 1;
    }
    
    application.setAttribute("hitCounter", appScopeCount);
    session.setAttribute("hitCounter2", sessionScopeCount);
    
%>

<html>
    <head>
        <title>Session and Application Hit Tracking</title>
    </head>

    <body>
    <center>
        <h1>Session and Application Hit Tracking</h1>
    </center>

    <table border = "1" align = "center"> 
        <tr bgcolor = "#949494">
            <th>Session info</th>
            <th>Value</th>
        </tr> 
        <tr>
            <td>id</td>
            <td><% out.print(session.getId()); %></td>
        </tr> 
        <tr>
            <td>Creation Time</td>
            <td><% out.print(createTime); %></td>
        </tr> 
        <tr>
            <td>Time of Last Access</td>
            <td><% out.print(lastAccessTime); %></td>
        </tr> 
        <tr>
            <td>Number of visits - Session Scope</td>
            <td><% out.print(sessionScopeCount); %></td>
        </tr> 
        <tr>
            <td>Number of visits - Application Scope</td>
            <td><% out.print(appScopeCount);%></td>
        </tr> 
        <tr>
            <td>Invalidate Session</td>
            <td>
                <form method="POST" action="InvalidateSession">
                    <input type="submit" value="Submit">
                </form>
            </td>
        </tr>         
    </table> 

</body>
</html>