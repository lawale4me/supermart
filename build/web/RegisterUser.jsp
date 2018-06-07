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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
    </head>
    <body "#CCFFFF">
<%
	
	int status=0;
	if(request.getParameter("uname")== null)
  	{
		status=1;
  	}
    
        if(request.getParameter("pass")== null)
  	{
		status=1;
  	}
              
        if(request.getParameter("repass")== null)
  	{
		status=1;
  	}
              
        if(request.getParameter("fname")== null)
  	{
		status=1;
  	}      
        if(request.getParameter("lname")== null)
  	{
		status=1;
  	}      
    
        if(request.getParameter("address")== null)
  	{
		status=1;
  	}      
    
       if(request.getParameter("phone")== null)
  	{
		status=1;
  	}  
        if(request.getParameter("email")== null)
  	{
		status=1;
  	}
              
        if(request.getParameter("role")== null)
  	{
		status=1;
  	}      
%>
<%

   if(status==1)
	{
		
      out.println("incorrect input");
      status=0;
      
%>

<br><br><a href = "Register.jsp">Click here to try again</a>

<%
}	
	else if(request.getParameter("pass").equals(request.getParameter("repass")))
	
	{
%>
    <jsp:useBean id="RegisterB" scope="session" class="bean.RegisterBean" />
    <jsp:setProperty name="RegisterB" property="*" />
<%
		boolean result;	
		result = RegisterB.registerUser();
		if(result == false)
		{
			out.println("User name already exists. Please register with a different user name.");
%>    

     		<br>	
		<a href = "Register.jsp">Register</a>
                <br>
                <a href = "index.jsp">Login</a>
                
 <%	
		}
		else
		{
			/* Set the value of the userid in the session */
			//session.setAttribute("userid",RegisterB.getUname());
                        //session.setAttribute("role",RegisterB.getrole());
                       out.println("Successfully Registered!!!.");
                           %>
               <br> <a href = "MemberArea.jsp">Return to your Member Area</a>
               <%
			//response.sendRedirect("MemberArea.jsp");		
		}
	}	
%>                  
    </body>
</html>
