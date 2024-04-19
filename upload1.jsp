          
  <%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%
   
    
        int id = 0;
        String pid = request.getParameter("pid");
        String filename = request.getParameter("file");
        String email = session.getAttribute("email").toString();
        String d = request.getParameter("data");
        String e = request.getParameter("dna4");         
        String f = request.getParameter("date");
        String att = request.getParameter("att");
   String skey = "waiting";
     
       try{
           
   Connection co = Dbconnection.getConnection();
    Statement st = co.createStatement();
   
   
    PreparedStatement ps = co.prepareStatement("insert into upload values(?,?,?,?,?,?,?)");
    ps.setInt(1,id);
    ps.setString(2,pid);    
    ps.setString(3,filename);    
    ps.setString(4,email);
    ps.setString(5,d);   
    ps.setString(6,skey); 
     ps.setString(7,att); 
    ps.executeUpdate();
    
response.sendRedirect("upload.jsp?message=success");
out.println("File Uploaded Successfully");
}
       
catch(Exception e1)
{
    //response.sendRedirect("fupload.jsp?msg=Duplicate entry for email");
out.println(e1.getMessage());
}


%>