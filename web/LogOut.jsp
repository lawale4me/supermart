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
        <title>JSP Page</title>
        
        <link href="bgr.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="green">
        <table border="0" cellspacing="0" align="center" width="537">
            <thead>
                <tr>
                    <th height="128" colspan="2" align="left" id="tpbgr"> &nbsp;&nbsp;Benjy Ultra <br>
Modern Super Market</th>
                </tr>
            </thead>
            <tbody>
                <tr align="center">
                    <td colspan="2" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;we sell high quality products
                <marquee></marquee></td><br>
                    <tr>
                        <td width="330"><a href="index.jsp">Home Page</a></td>
                        <td width="203" align="right"><a href="Login.jsp">Log In</a></td>
                      
                        
                    </tr>
                <tr>
                <td colspan="2"></tr>
                <table border="0" align="center">
                       <tbody>
                         <tr align="center">
                             <%@ page language="java" %>
                             
                                 <% session.invalidate();%>
                                 <br><br><b>You have Successfully Logged out</b>
                         </tr>

                       </tbody>
                </table>
            <tr>
            <td colspan="2"></tbody>
        </table>
        
    
    
    
    <%--
    This example uses JSTL, uncomment the taglib directive above.
    To test, display the page like this: index.jsp?sayHello=true&name=Murphy
    --%>
    <%--
    <c:if test="${param.sayHello}">
        <!-- Let's welcome the user ${param.name} -->
        Hello ${param.name}!
    </c:if>
    --%>
    
    </body>
</html>
