<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*" %>

<%
    // Get session creation time.
    DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
    Date createTimeDate = Calendar.getInstance().getTime();
    String createTimeString = df.format(createTimeDate);

    // Create cookies for session create time.      
    Cookie CreateTime = new Cookie("CreateTime", createTimeString);

    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    String title = "Session cookie counter";
    Integer visitCount = new Integer(0);
    String visitCountKey = new String("visitCount");
 
    // Check if this is new comer on your Webpage.
    if (session.isNew()) {
        title = "Welcome (back?) to the page.  Since this is a new session the session counter is now zero.";
        session.setAttribute(visitCountKey, visitCount);
    }
    visitCount = (Integer) session.getAttribute(visitCountKey);
    visitCount = visitCount + 1;
//   userID = (String)session.getAttribute(userIDKey);
    session.setAttribute(visitCountKey, visitCount);
    out.println("Number of visits to the page for this session");
    out.println(visitCount);
    
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Session Tracking</title>
    </head>

    <body>
    <center>
        <h1>Session Tracking</h1>
    </center>

		<p>
			<a href="/Project03/InvalidateSession">Invalidate the session</a>
		</p>

</body>
</html>
