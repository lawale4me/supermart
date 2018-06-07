<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Area</title>
    <link href="bgr.css" rel="stylesheet" type="text/css">
    </head>
        <body bgcolor="green">
        <table width="537" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="128" id="tpbgr"><strong>&nbsp;&nbsp;Benjy Ultra <br>
Modern Super Market</strong></td>
  </tr>
  <tr>
    <td align="center">&nbsp;&nbsp;we sell high quality products </td>
  </tr>
</table>

            <%
               try
                  {
                  session = request.getSession(true);
                  if(session.getAttribute("userid")==null)
                      {
                         session.setAttribute("userid","guest");
                      }
                            }
                   catch(java.lang.NullPointerException NPE)
                      {System.out.println("error"+ NPE);}
                      %>
                      <% 
                      if (session.getAttribute("userid").equals("guest"))
                          {
                            pageContext.forward("/Login.jsp");
                            %>
              <tr><td><a href="Login.jsp">login</a></td><td><a href="index.jsp">Home Page</a></td></tr>       
                      <% 
                      }
                      else
                          {
            %>
            <a href="LogOut.jsp">Log Out</a>
            <% 
               JspWriter wo= pageContext.getOut();
                wo.print("<center><font size=5>Welcome "+session.getAttribute("userid")+ "!</font></center>");
          }  %>
          <br>
          <br>
          <table align="center" border="0">
              <tbody>
                  <tr>
                      <form name="viewstocks" action="ViewStocks.jsp" method="POST">
                              <input type="submit" href="ViewStocks.jsp"value="View Stocks" name="viewstocks" />
                          </form>
                          <form name="sell" action="Sell.jsp" method="POST">
                              <input type="submit" value="Sell" name="sell" />
                          </form>
                          <form name="register" action="Register.jsp" method="POST">
                              
                          <% 
                             //String a=session.getAttribute("role");
                             if(session.getAttribute("role")==null)
                                 {
                                 %>
                                 <input  disabled type="submit" href="Register.jsp" value="Register" name="Register" />
                                 
                                 <%
                                 }else{
                                 %>
                                 <input type="submit" href="Register.jsp" value="Register" name="Register" />
                                 
                                 <%
                          }
                          %>
                          </form>                          
                  </tr>
              </tbody>
          </table>
          
    </body>
</html>
