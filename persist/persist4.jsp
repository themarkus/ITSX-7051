<%
	Cookie[] cookies = request.getCookies();
	if ( cookies != null ) {
		for ( int i = 0; i < cookies.length; i++ ) {
			Cookie cookie = cookies[i];
			session.setAttribute( cookie.getName(), cookie.getValue() );
		}
	}	
%>
<html>
<body>
<h2>persist4.jsp receives all data in cookie headers and passes it to persist5 in
session attributes.</h2>
Your session id is <%=session.getId()%><br />
The session contains the following attributes:<br />
<%
	java.util.Enumeration list = session.getAttributeNames();
	while ( list.hasMoreElements() ) {
		String name = (String)list.nextElement();
		out.print( name + " = <font color=\"red\">" + (String)session.getAttribute(name) + "</font><br />");
	}
%>
<a href="persist5.jsp">Proceed to persist5.jsp</a>
</body>
</html>
