<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="collaborative.Dbconnection"%>
<%@ page session="true" %>
<%@page import="collaborative.Mail"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection con=Dbconnection.getConnection();
    
    
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from edgeserver where username= '"+username+"' and password='"+password+"'");
    if(rs.next())
    {

    
   
                   
    response.sendRedirect("eserver_home.jsp?m1=LoginFail");
    }
    else 
    {
    response.sendRedirect("eserver.jsp?m2=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>