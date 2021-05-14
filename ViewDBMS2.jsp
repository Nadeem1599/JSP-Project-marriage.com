<%@include file="DBCON.jsp"%>
<%@include file="View.jsp"%>
<html>
    <body bgcolor="YELLOW">
       <br>
        
            <%
                String strtitle=request.getParameter("title");                        
                try
                {
                    String viewquery="";
                    if(strtitle.equalsIgnoreCase("NAME"))
                    {
                        String nm=request.getParameter("txt1");
                        viewquery="select * from registration where cname='"+nm+"'";
                    }
                    else if(strtitle.equalsIgnoreCase("ID"))
                    {
                        int id=Integer.parseInt(request.getParameter("txt1"));
                        viewquery="select * from registration where regid="+id;
                    }
                    else if(strtitle.equalsIgnoreCase("CITY"))
                    {
                        String city=request.getParameter("txt1");
                        viewquery="select * from registration where lvcity='"+city+"'";
                    }
                    else if(strtitle.equalsIgnoreCase("STATE"))
                    {
                        String state=request.getParameter("txt1");
                        viewquery="select * from registration where state='"+state+"'";
                    }
                    else if(strtitle.equalsIgnoreCase("INCOME"))
                    {
                        String inc=request.getParameter("txt1");
                        viewquery="select * from registration where income='"+inc+"'";
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
