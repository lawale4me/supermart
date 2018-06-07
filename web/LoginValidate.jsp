<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging in</title>
    </head>
<body>
     <%-- Use the JavaBean  to validate the user name and password from the database. Create an instance of the JavaBena --%>
<jsp:useBean id="LoginB" class="bean.LoginBean" />
<%-- Set the property of the JavaBean using the setProperty tag --%>
<jsp:setProperty name="LoginB" property="*" />
<%
    /* Retrieve the value of the user name */
	String name=request.getParameter("uname");
        String role=request.getParameter("role");
	boolean result;
        boolean result1;
	/* Invoke the getResult() method to verify the user name and password */
	result = (boolean)LoginB.getResult();
	if(result == true)
	{
		/* Set the value of the userid in the session bean */
		session.setAttribute("userid", LoginB.getUname());
                session.setAttribute("role", LoginB.getRole());
%>

		<%-- Forward the request to the member page--%>
		<jsp:forward page ="MemberArea.jsp" />
                
<%		

                    }
	else
	{
%>
		<%-- Forward the request to the Login page --%>
		<jsp:forward page ="index.jsp" />
<%
	}
%>   
    </body>
</html>
