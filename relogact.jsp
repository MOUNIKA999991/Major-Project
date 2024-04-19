
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>

<%
    String email = request.getParameter("email");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
        String user=null;
        String att = null;
        
        //String password=null;
	
        Connection co = Dbconnection.getConnection();
        Statement st = co.createStatement();
        ResultSet rs = st.executeQuery("select * from researcher where email='"+email+"' and password='"+password+"' ");
       if(rs.next())
        {
         user = rs.getString(2);
         att = rs.getString("att");
		   session.setAttribute("email",email);
                   session.setAttribute("att",att);
		   System.out.println("User:"+user);
			response.sendRedirect("researcherhome.jsp?m1=Login Success");
        }
       else 
        {
            response.sendRedirect("researcher.jsp?m2=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in useract"+e.getMessage());
    }
%>


