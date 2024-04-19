
          
               
  <%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%
    Connection con = null;
    Statement st = null;
   ResultSet rs = null;
    
     
    String a = request.getParameter("pid");
     
        String b = request.getParameter("pname");
          String c = request.getParameter("presc");
          String d = session.getAttribute("email").toString();
        
    try
    {
        
   

        Connection co = Dbconnection.getConnection();

PreparedStatement ps = co.prepareStatement("insert into prescription values(?,?,?,?)");

ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);




ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("prescription.jsp?m1=success");
out.println("Registered Successfully");
}
catch(Exception e1)
{
 response.sendRedirect("prescription.jsp?m2=duplicate entry");
}


%>

    
    
   
</div>
</body>
</html>
