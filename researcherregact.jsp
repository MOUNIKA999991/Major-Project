
          
               
  <%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%
    Connection con = null;
    Statement st = null;
   ResultSet rs = null;
    
     String id = request.getParameter("id");
    String a = request.getParameter("username");
     
        String b = request.getParameter("email");
          String c = request.getParameter("password");
         String d = request.getParameter("date");
          String e = request.getParameter("phoneno");
          
         String h = request.getParameter("att");
    try
    {
        
   

        Connection co = Dbconnection.getConnection();

PreparedStatement ps = co.prepareStatement("insert into researcher values(?,?,?,?,?,?,?)");

ps.setString(1,id);
ps.setString(2,a);
ps.setString(3,b);
ps.setString(4,c);
ps.setString(5,d);
ps.setString(6,e);
ps.setString(7,h);




ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("researcher.jsp?m1=success");
out.println("Registered Successfully");
}
catch(Exception e1)
{
 response.sendRedirect("researcherreg.jsp?m2=duplicate entry");
}


%>

    
    
   
</div>
</body>
</html>
