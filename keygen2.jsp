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
    String att = request.getParameter("att");
String filename = request.getParameter("filename");
String email = session.getAttribute("email").toString();

String privatekey = null;
String data = null;



try{
    int j =0; int k = 0;
     Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
       rs = st.executeQuery("select * from upload where pemail='"+email+"' and filename='"+filename+"'");
                           
       if( rs.next())
       {
           
           
           data = rs.getString("data");
           
           
           
           
       }
       
       // Encryption Start time //
       
       
       
        long start = System.nanoTime();
 // some time passes
 
       
       
       
       
       
       
          //secretkey generating
                                KeyGenerator keyGen = KeyGenerator.getInstance("AES");
                                keyGen.init(128);
                                SecretKey secretKey = keyGen.generateKey();
                                System.out.println("secret key:" + secretKey);
           
           
           //done..///
                                
                 //convert skey to string//               
                                
             byte[] be = secretKey.getEncoded();//encoding secretkey
                                String skey = Base64.encode(be);
                                System.out.println("converted secretkey to string:" + skey);
                                String cipher = new encryption().encrypt(data, secretKey);
                                System.out.println(cipher);
           
           
           //done//
           
           long end = System.nanoTime();
 long elapsedTime = end - start; 
 
 int seconds = (int)((elapsedTime / 1000) % 60);
 
       
 String s=String.valueOf(elapsedTime);  
 System.out.println("timeeeeeeeeee"+seconds);
           
          j = st.executeUpdate("update upload set skey= '"+skey+"' where pemail='"+email+"' and filename='"+filename+"'");
          
          PreparedStatement ps = con.prepareStatement("insert into encfiles values(?,?,?,?,?,?,?,?,?)");

                ps.setInt(1,k);
                ps.setString(2,pid);
                ps.setString(3,filename);
                ps.setString(4,email);
                ps.setString(5,data);
                ps.setString(6,cipher);
                ps.setString(7,skey);
                ps.setString(8,att);
                ps.setInt(9,seconds);
                
int i = ps.executeUpdate();
                
          
          
          
          
          if (i !=0){
              
              
              
         
          response.sendRedirect("keygen.jsp?m1=success");
          
        }
          else{
          response.sendRedirect("keygen.jsp?m2=Failed");
      }
           
      
       
       
       
       
    
      
     
    
} catch (Exception ex) {
  ex.printStackTrace();
   }
   %>
