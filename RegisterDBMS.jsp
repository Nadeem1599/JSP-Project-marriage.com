<%@include file="DBCON.jsp"%>
<html>
    <body>
        Register DBMS page 
        <%
            try
            {
                int regid=Integer.parseInt(request.getParameter("regid"));
                String name=request.getParameter("name");
                String dob=request.getParameter("dob");
                String gender=request.getParameter("gender");
                String marstatus=request.getParameter("marstatus");
                String qual=request.getParameter("qual");
                String city=request.getParameter("city");
                String state=request.getParameter("state");
                float height=Float.parseFloat(request.getParameter("height"));
                String colour=request.getParameter("colour");
                String working=request.getParameter("working");
                String income=request.getParameter("income");
                
                /*
                out.println(regid);
                out.println(name);
                out.println(dob);
                out.println(gender);
                out.println(marstatus);
                out.println(qual);
                out.println(city);
                out.println(state);
                out.println(height);
                out.println(colour);
                out.println(working);
                out.println(income);
                */
                
                String insertquery="insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?);";
                
                PreparedStatement pst=con.prepareStatement(insertquery);
                        
                pst.setInt(1, regid);
                pst.setString(2,name);
                pst.setString(3,dob);
                pst.setString(4,gender);
                pst.setString(5,marstatus);
                pst.setString(6,qual);
                pst.setString(7,city);
                pst.setString(8,state);
                pst.setFloat(9,height);
                pst.setString(10,colour);
                pst.setString(11,working);
                pst.setString(12,income);
                
                pst.executeUpdate();
                out.println("regisration done ...");
                
                
                
                
                
                
                
                
            }
            catch(Exception e)
            {
            
            }
        
        
        
        
        %>    
        
    </body>
</html>
