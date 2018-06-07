<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selling Page</title>
        <script  language="javascript">
            function calcAmount()
            {
             var 
            }
            
        </script>
    <link href="bgr.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="green">
    <table width="537" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="128" id="tpbgr">&nbsp;&nbsp;<strong>Benjy Ultra <br>
                Modern Super Market </strong></td>
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
            <a href="MemberArea.jsp">Member Area</a>
            <% 
               JspWriter wo= pageContext.getOut();
                wo.print("<center><font size=5>Welcome "+session.getAttribute("userid")+ "!</font></center>");
          }  %>
          <br>
          <br>
          <form name="sellstocks" action="SellStocks.jsp" method="POST">
              <table border="0" align="center">
                  <thead>
                      <tr>
                          <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Here You Can Sell Stocks</th>
                      </tr>
                  </thead>
                  <tbody>
        <sql:setDataSource 
        driver="sun.jdbc.odbc.JdbcOdbcDriver" 
        url="jdbc:odbc:supermart" 
        user="sa"
        password="sa"
        />

                      <tr>
                          <td>Stocks</td>
                         <td>
                    <select name="stock" >
        <sql:query var="result" >
            SELECT Product_name FROM Stocks
        </sql:query>
                  <c:forEach var="row" items="${result.rowsByIndex}">
                        <c:forEach var="column" items="${row}" >
                          <option>
                          <c:out value="${column}"/></option>                    
                      </c:forEach>
                  </c:forEach>  
                  </select></td>    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <select name="stock1">
        <sql:query var="result" >
            SELECT Product_name FROM Stocks
        </sql:query>
                  <c:forEach var="row" items="${result.rowsByIndex}">
                        <c:forEach var="column" items="${row}" >
                          <option>
                          <c:out value="${column}"/></option>                    
                      </c:forEach>
                  </c:forEach>  
                  </select></td>  
                      </tr>
                      <tr>
                          <td>Quantity</td>
                          <td><input type="text" name="qty" value="" /></td>
                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="qty" value="" /></td>
                      </tr>
                      <tr>
                          <td>Price</td>
                          <td><input type="text" name="price" value="" readonly="readonly"/></td>
                      </tr>
                      <tr align="center"><td><input type="submit" value="Sell" name="sell" /></td></tr>
                  </tbody>
              </table>
              
          </form>
    
    </body>
</html>
