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
        <title>Login Page</title>
        
   <link href="bgr.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="green">
        <table border="0" cellspacing="0" align="center" width="554">
            <thead>
                <tr>
                    <th width="537" height="125" align="left" id="tpbgr">&nbsp;&nbsp;Benjy Ultr<span id="tpbg">a</span><br>
                    Modern Super Market</th>
                </tr>
            </thead>
            <tbody>
                <tr align="center">
                    <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<marquee>we sell high quality products</marquee></td><br>
                    <tr>
                        <td><a href="index.jsp">Home Page</a></td>
                    </tr>
                </tr>
                <table border="0" align="center">
                       <tbody>
                           <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login Here</td></tr>
                           <tr></tr>
                           <form action="LoginValidate.jsp" method="POST">
                            <tr>
                             <td>User Name</td>
                             <td><input type="text" name="uname" value="" /></td>
                         </tr>
                         <tr>
                             <td>Password</td>
                             <td><input type="password" name="pass" value="" /></td>
                         </tr>
                               <tr>
                                   <table border="0" align="center">
                                       <thead>
                                           <tr>
                                               <th></th>
                                           </tr>
                                       </thead>
                                       <tbody>
                                           <tr>
                                               <td><input type="submit" value="Submit" name="submit" /></td>
                                           </tr>
                                       </tbody>
                               </table></tr>
                           </form>

                       </tbody>
                </table>
            </tbody>
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
