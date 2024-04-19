<%@page import="novelefficient.encryption"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>


<%   
        String pid = request.getParameter("pid");
        String pname = request.getParameter("pname");
         String patt = request.getParameter("patt");
        String filename = request.getParameter("filename");
        String email = session.getAttribute("email").toString();
         String att = session.getAttribute("att").toString();

String skey = "waiting";
String data = "waiting";

String status = "waitng";

try{
    int j =0; int k = 0;
     Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
     
       
       
           
           
              PreparedStatement ps = con.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?)");

                ps.setInt(1,k);
                ps.setString(2,pid);
                ps.setString(3,pname);
                ps.setString(4,filename);
                ps.setString(5,data);
                ps.setString(6,email);
                ps.setString(7,skey);
                      ps.setString(8,patt);
                       ps.setString(9,att);
int i = ps.executeUpdate();
                
          
          
          
          
          if (i !=0){
              
              
              
         
          response.sendRedirect("rviewdata.jsp?m1=success");
          
        }
          else{
          response.sendRedirect("rviewdata.jsp?m2=Failed");
      }
           
      
       
       
       
       
    
      
     
    
} catch (Exception ex) {
  ex.printStackTrace();
   }
   %>
