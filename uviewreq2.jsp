<%@page import="novelefficient.Mail"%>
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
    
    
    String filename = request.getParameter("filename");
    String pid = request.getParameter("pid");
    String datt = request.getParameter("datt");
    String patt = request.getParameter("patt");
    String doctor = request.getParameter("dname");

    String email = session.getAttribute("email").toString();
    String privatekey = null;
    String data = null;



try{
    int j =0; int k = 0;
     Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
                                    
                                    
         if(datt.equals(patt)){                           
                                    
                                    
       rs = st.executeQuery("select * from encfiles where email='"+email+"' and filename='"+filename+"'");
                           
       if( rs.next())
       {
           
           
           data = rs.getString("data");
            privatekey = rs.getString("skey");
           
           
           
           
       }
       
          Mail m = new Mail();
          String msg ="User Name:"+doctor+"\nSKEY :"+privatekey;
          m.secretMail(msg,email,email);
                   
       
        
           
           
           
          j = st.executeUpdate("update request set skey= '"+privatekey+"',data='"+data+"' where pname='"+email+"' and filename='"+filename+"' and doctor = '"+doctor+"'");
          
        

          
          
          
          
          if (j!=0){
              
              
              
         
          response.sendRedirect("uviewreq.jsp?m1=success");
          
        }
          else{
          response.sendRedirect("uviewreq.jsp?m2=Failed");
      }
           
      
       
         }
         
         
         else{
             
             
             response.sendRedirect("uviewreq.jsp?m3=failed");
             
             
         }
       
       
    
      
     
    
} catch (Exception ex) {
  ex.printStackTrace();
   }
   %>
