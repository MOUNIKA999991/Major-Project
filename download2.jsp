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
    String skey = request.getParameter("skey");
String filename = request.getParameter("filename");
String email = session.getAttribute("email").toString();


String data = null;

try{
    int j =0; int k = 0; int jk =0;
        long start = System.nanoTime();
 // some time passes
     Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                             Statement st1 = con.createStatement();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
       rs = st.executeQuery("select * from encfiles where skey='"+skey+"' and filename='"+filename+"'");
                           
       if( rs.next())
       {
         
 long end = System.nanoTime();
 long elapsedTime = end - start; 
 
 int seconds = (int)((elapsedTime / 1000) % 60);
 session.setAttribute("seconds",seconds);
       
 String s=String.valueOf(elapsedTime);  
 System.out.println("timeeeeeeeeee"+seconds);
           
             jk = st1.executeUpdate("update request set status= 'done' where pid='"+pid+"'and doctor='"+email+"'");
        
           data = rs.getString("data");
           
             response.setHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
          out.write(data);
           response.sendRedirect("download3.jsp?kkk=failed"); 
         
           
         
                  
       }
       
       else{
           
           
          response.sendRedirect("download.jsp?m2=failed"); 
           
           
       }
          
          
          
         
      
       
       
       
       
    
      
     
    
} catch (Exception ex) {
  ex.printStackTrace();
   }
   %>
