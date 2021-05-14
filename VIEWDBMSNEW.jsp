<%@include file="DBCON.jsp"%>
<%@include file="ViewNEW.jsp"%>
<html>
    <body bgcolor="YELLOW">
       <br>
        
            <%
                String strstate=request.getParameter("state");
                String strincome=request.getParameter("income");
                
                try
                {
                    String viewquery="";
                    if(!strstate.equalsIgnoreCase("All") && !strincome.equalsIgnoreCase("All"))
                    {
                        viewquery="select * from registration where state='"+strstate+"' AND income='"+strincome+"'" ;
                    }
                    else if(!strstate.equalsIgnoreCase("ALL") && strincome.equalsIgnoreCase("ALL"))
                    {
                        viewquery="select * from registration where state='"+strstate+"'";
                    }
                    else if(strstate.equalsIgnoreCase("ALL") && !strincome.equalsIgnoreCase("ALL"))
                    {
                    viewquery="select * from registration where income='"+strincome+"'" ;
                    }
                    
                    else
                    {
                        viewquery="select * from registration";
                    }
                    Statement stmt=con.createStatement();
                    ResultSet rs=stmt.executeQuery(viewquery);
                %>
                <table bgcolor="CYAN" border="5" align="center">
                    <%
                        while(rs.next())
                        {
                    %>
                            <tr>
                                <td><%out.println(rs.getInt(1));%></td>
                                <td><%out.println(rs.getString(2));%></td>
                                <td><%out.println(rs.getString(3));%></td>
                                <td><%out.println(rs.getString(4));%></td>
                                <td><%out.println(rs.getString(5));%></td>
                                <td><%out.println(rs.getString(6));%></td>
                                <td><%out.println(rs.getString(7));%></td>
                                <td><%out.println(rs.getString(8));%></td>
                                <td><%out.println(rs.getFloat(9));%></td>
                                <td><%out.println(rs.getString(10));%></td>
                                <td><%out.println(rs.getString(11));%></td>
                                <td><%out.println(rs.getString(12));%></td>
                                
                                
                            </tr>
                    
                    <%
                        }    
                    %>
                </table>
                
                
                
                
                   
                <%    
                }
                catch(Exception e)
                {
                    out.println("data not found .."+e);
                }
            %>
            
    </body>
</html>
