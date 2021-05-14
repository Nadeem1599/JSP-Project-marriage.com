<%@include file="DBCON.jsp"%>
<%@include file="View.jsp"%>
<html>
    <body>
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
                    
                    while(rs.next())
                    {
                        
                        out.println(" "+rs.getInt(1));
                        out.println(" "+rs.getString(2));
                        out.println(" "+rs.getString(3));
                        out.println(" "+rs.getString(4));
                        out.println(" "+rs.getString(5));
                        out.println(" "+rs.getString(6));
                        out.println(" "+rs.getString(7));
                        out.println(" "+rs.getString(8));
                        out.println(" "+rs.getFloat(9));
                        out.println(" "+rs.getString(10));
                        out.println(" "+rs.getString(11));
                        out.println(" "+rs.getString(12));
                        out.println("<br>");
                    }
                    
                }
                catch(Exception e)
                {
                    out.println("data not found .."+e);
                }
            %>
            
    </body>
</html>
