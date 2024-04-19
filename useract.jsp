<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>

<%
    String email = request.getParameter("email");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
        String username=null;
        
        //String password=null;
	  Connection con = Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from patients where email='"+email+"' and password='"+password+"'");
       if(rs.next())
        {
         username = rs.getString(1);
		   session.setAttribute("email",email);
                   session.setAttribute("username",username);
		   //System.out.println("User:"+user);
			response.sendRedirect("userhome.jsp?m1=Login Success");
        }
       else 
        {
            response.sendRedirect("user.jsp?m2=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in useract"+e.getMessage());
    }
%>


