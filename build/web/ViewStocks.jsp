<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Available Stocks</title>
    <link href="bgr.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="green">
        <table width="537" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="128" id="tpbgr">&nbsp;&nbsp;<strong>&nbsp;Benjy Ultra <br>
                Modern Super Market </strong></td>
  </tr>
  <tr>
    <td align="center">we sell high quality products </td>
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
                      if(session.getAttribute("userid").equals("guest"))
                          {
                           pageContext.forward("/Login.jsp");
                           } else
                          {
                           %>
                                 <a href="LogOut.jsp">Log Out</a>
                                 <a href="MemberArea.jsp">Member Area</a>
                      <% 
                    JspWriter wo= pageContext.getOut();
                wo.print("<center><font size=5>Welcome "+session.getAttribute("userid")+ "!</font></center>");
          }
  %>
        
        <sql:setDataSource 
        driver="sun.jdbc.odbc.JdbcOdbcDriver" 
        url="jdbc:odbc:supermart" 
        user="sa"
        password="sa"
        />
        <sql:query var="result" >
            SELECT * FROM Stocks
        </sql:query>
        
        <table border="1" align="center">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
