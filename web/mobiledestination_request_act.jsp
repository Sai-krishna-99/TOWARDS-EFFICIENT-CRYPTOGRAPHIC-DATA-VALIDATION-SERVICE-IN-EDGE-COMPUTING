<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="collaborative.Dbconnection"%>
<%@ page session="true" %>
<%@page import="collaborative.Mail"%>
<%
    String filename = request.getParameter("filename");
    String md = request.getParameter("email");
    String update = request.getParameter("dtt");
    String ms = session.getAttribute("user").toString();
    int d = Integer.parseInt(update);
    int a=0; int b = 0;
    String stk = null;
    
   int i = 0;
   SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy.HH:mm:ss");
    
    SimpleDateFormat sdfDate = new SimpleDateFormat("dd");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
                        
                        
                        int l = Integer.parseInt(strDate);
                        
                        if(l==d){
                            
                            stk = "Edge";
                            
                        }
 
                        
                        else {
                            
                            stk = "cloud";
                            
                        }
    try{
        
       
       
    Connection con=Dbconnection.getConnection();
   
    
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from edgeserver_files ");
    if(rs.next())
    {

    PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?,?)");
    ps.setInt(1,i);
    ps.setString(2,rs.getString("filename"));
    ps.setString(3,md);
    ps.setString(4,rs.getString("data"));  
    ps.setString(5,rs.getString("cipher"));
    ps.setString(6,rs.getString("skey"));
    ps.setString(7,ms);
    ps.setString(8,strDate);
    ps.setString(9,"waiting");
     ps.setString(10,stk);
    ps.executeUpdate();
   
   
                   
    response.sendRedirect("mobiledestination_request.jsp?m1=success");
    }
    else 
    {
    response.sendRedirect("mobiledestination_request.jsp?m2=LoginFail");
    }
    }
    catch(Exception e)
    {
       out.println(e);
    //response.sendRedirect("mobiledestination_request.jsp?m3=LoginFail");
    }
%>