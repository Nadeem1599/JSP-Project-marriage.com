<html>
    <body>
            Check PAGE 
        <%
            try
            {
               String strole=request.getParameter("role"); 
               String stuser=request.getParameter("user");
               String stpass=request.getParameter("password");
                
               if(strole.equalsIgnoreCase("Admin") && stuser.equalsIgnoreCase("Sharad") && stpass.equals("admin"))
               {
                   response.sendRedirect("AdminLogin.jsp");
                   //out.println("admin login success ");
               }
               else if(strole.equalsIgnoreCase("user") && stuser.equalsIgnoreCase("Nadeem") && stpass.equals("123"))
               {
                   response.sendRedirect("UserLogin.jsp");
                   //out.println("user login success ");
               }
               else
               {
                   RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                   dis.include(request, response);
                   out.println("inavlid login & password ");
               }
               
            }
            catch(Exception e)
            {
            
            }
        %>
        
    </body>
</html>
