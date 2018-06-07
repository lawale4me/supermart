<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
            <link href="bgr.css" rel="stylesheet" type="text/css">
    </head>
    
<body bgcolor="green">
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
                                 
                      <% 
                    JspWriter wo= pageContext.getOut();
                wo.print("<center><font size=5>Welcome "+session.getAttribute("userid")+ "!</font></center>"+"Account Type is:"+session.getAttribute("role"));
          }
  %>
    <table border="0" cellspacing="0" align="center" width="537">
        <thead>
            <tr>
                <th height="128" colspan="3" align="left" id="tpbgr">&nbsp;&nbsp;Benjy Ultra <br>
                Modern Super Market </th>
            </tr>
        </thead>
        <tr>
        <td colspan="3" align="center">we sell high quality products
        <td colspan="2"><tbody>
            <tr align="center">
                <td colspan="3" align="center">&nbsp;&nbsp;&nbsp;<marquee>
              </marquee></td><br>
                <tr><td><a href="">View Stocks</a></td>
                      <td width="131" align="center"><a href="">Sell Stocks</a></td>
                      <td width="271" align="right"><a href="">Log Out</a></td>
                    <td></td>
                </tr>
            <tr>
            <td colspan="3"></tr>
            <tr>
        
                <td colspan="3" align="center"><form action="RegisterUser.jsp" method="POST"><table border="0">
                <thead>
                    <tr>
                        <th align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Register new System User</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="repass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" name="phone" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email Id</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Acount Type(Admin/Staff)</td>
                        <td>  <select name="role">
                                <option>Admin</option>
                                <option>Staff</option>
                        </select></td>
                    </tr>
                  <table border="0">
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
                  </table>
                    
                </tbody>
            </table>
            
        </form></td>
            </tr>
        <tr>
        <td colspan="3"></tbody>
    </table>
        
    
</body>
</html>