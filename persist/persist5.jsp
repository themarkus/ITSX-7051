<html>
<body>
<h2>persist5.jsp receives all its data in session attributes and sends them to persist6
in a single utility object stored in the session instead of in a big list of session
attributes.</h2>
Adding attributes to external object....<br />
Removing attributes from session....<br />
Adding Info object to session....<br />
<%
	edu.acc.j2ee.persist.Info info = new edu.acc.j2ee.persist.Info();
	info.firstName = (String)session.getAttribute("firstName"); 
	// must cast because attributes are Objects
	info.lastName  = (String)session.getAttribute("lastName");
	// notice in the next one that session.getAttribute returns an object and we need an int
	// because Info's age field is an int so we cast the object to String and use Integer.parseInt() 
	// to get an int. That's a lot of work
	info.age       = Integer.parseInt( (String)session.getAttribute("age"));
	info.city      = (String)session.getAttribute("city");
	session.setAttribute( "info", info ); // notice this is an Object, not a String
	session.removeAttribute("firstName");
	session.removeAttribute("lastName");
	session.removeAttribute("age");
	session.removeAttribute("city");
%>
Info object built.<br />
It's contents:<br />
firstName: <%=info.firstName%><br />
lastName: <%=info.lastName%><br />
age: <%=info.age%><br />
city: <%=info.city%><br />
<a href="persist6.jsp">Proceed to persist6.jsp</a>
</body>
</html>
