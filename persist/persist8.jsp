<html>
<body>
<h2>persist8.jsp recevies all its data in hidden form fields.<br />
This time, however, we create a bean and set all its data in one step!<br />
We'll also introduce the JSP Expression Language (EL) for accessing bean properties.<br />
jsp:getProperty and jsp:setProperty tags are jsp-specific. Since containers are evolving<br />
to support languages besides Java, we can use EL to be language-independent.
</h2>
<jsp:useBean id="info" class="edu.acc.j2ee.persist.InfoBean" scope="session">
	<jsp:setProperty name="info" property="*"/>
</jsp:useBean>
The bean has been created and initialized with form data.<br />
Its contents:<br />
firstName: ${info.firstName}<br />
lastName: ${info.lastName}<br />
age: ${info.age}<br />
city: ${info.city}<br/>
<p>
To work, the field names from the form just have to match the property names in the bean.
</body>
</html>
