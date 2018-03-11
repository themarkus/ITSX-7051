<html>
<body>
<h2>persist6.jsp receives all its data in one single session object and sends that data
to persist7.jsp in a hand-built InfoBean object using JSP tags.</h2>
The current session id is <%=session.getId()%><br />
The session 'info' object's contents:<br />
<%
	edu.acc.j2ee.persist.Info info = (edu.acc.j2ee.persist.Info)session.getAttribute("info");
	out.print( "firstName: " + info.firstName + "<br />" );
	out.print( "lastName:  " + info.lastName  + "<br />" );
	out.print( "age:       " + info.age       + "<br />" );
	out.print( "city:      " + info.city      + "<br />" );
%>
<p>
Now creating the InfoBean object....<br />
<%-- note how few scriptlets we have to use here; it's all tags --%>
<jsp:useBean id="infobean" class="edu.acc.j2ee.persist.InfoBean" scope="session">
	<jsp:setProperty name="infobean" property="firstName" value="<%=info.firstName%>"/>
	<jsp:setProperty name="infobean" property="lastName" value="<%=info.lastName%>"/>
	<jsp:setProperty name="infobean" property="age" value="<%=info.age%>"/>
	<jsp:setProperty name="infobean" property="city" value="<%=info.city%>"/>	
</jsp:useBean>
Now deleting 'info' from the session....<br />
<% session.removeAttribute("info"); %>
The 'infobean' properties are:<br />
firstName: <jsp:getProperty name="infobean" property="firstName"/><br />
lastName: <jsp:getProperty name="infobean" property="lastName"/><br />
age: <jsp:getProperty name="infobean" property="age"/><br />
city: <jsp:getProperty name="infobean" property="city"/><br />
</p>
<a href="persist7.jsp">Proceed to persist7.jsp</a>
</body>
</html>
