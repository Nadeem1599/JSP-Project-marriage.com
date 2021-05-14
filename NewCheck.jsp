<%@include file="DBCON.jsp"%>

<html>
    <body>
            New Check PAGE 
        <%
            try
            {
               String strole=request.getParameter("role"); 
               String stuser=request.getParameter("user");
               String stpass=request.getParameter("password");
                
               String viewlogin="select * from login";
               Statement smt=con.createStatement();
               
               ResultSet rs=smt.executeQuery(viewlogin);
               
               int count=0;
               while(rs.next())
               {
                    if(strole.equalsIgnoreCase(rs.getString(1)) && stuser.equalsIgnoreCase(rs.getString(2)) && stpass.equals(rs.getString(3)))
                    {
                        count++;
                        break;
                    }
               }
               if(count>0)
               {
                   if(strole.equalsIgnoreCase("ADMIN"))
                   {
                       response.sendRedirect("AdminLogin.jsp");
                   }
                   else
                   {
                   
                       response.sendRedirect("UserLogin.jsp");
                   }
               }
               else
               {
                    RequestDispatcher ds = request.getRequestDispatcher("Login.jsp");
                    ds.include(request, response);
                    out.println("Invalid login & password .");
               }
               
               
            }
            catch(Exception e)
            {
            
            }
        %>
        
    </body>
</html>
