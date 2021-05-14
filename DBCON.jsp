<%@page import="java.sql.*"%>
<html>
    <body>
        <%!Connection con;%>
        <%
            try
            {
                String dbuser="root";
                String dbpassword="root";
                String connectionURL = "jdbc:mysql://localhost:3306/shadi"; 
                Class.forName("com.mysql.jdbc.Driver"); 
                con= DriverManager.getConnection(connectionURL,dbuser,dbpassword);

                out.println("Connection success<br>");
            }
            catch(Exception e)
            {
                    out.println("Connection afailed.. "+e);
            }
        %>
    </body>
</html>
