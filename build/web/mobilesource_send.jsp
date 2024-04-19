<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="collaborative.Dbconnection"%>
<%@ page session="true" %>
<%@page import="collaborative.Mail"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Towards Efficient Cryptographic Data Validation Service in Edge Computing s</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script src="js/cufon-yui.js" type="text/javascript" charset="utf-8"></script>
<script src="js/Chaparral_Pro.font.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
</head>
    <%
if(request.getParameter("m1")!=null){%>
    
   <script>alert('File Sent Sucessfully..!')</script>
}  

<%}
if(request.getParameter("m3")!=null){%>

 <script>alert('Filename Exist..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
    <h1>Towards Efficient Cryptographic Data Validation Service in Edge Computing s</h1>
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
   <ul>
      <li><a href="mobilesource_home.jsp">HOME</a></li>
      <li><a href="mobilesource_upload.jsp">Upload</a></li>
     <li><a  class="active" href="mobilesource_send.jsp">Send Data</a></li>
       
       <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p> We live in a digital world where every detail of our information is being transferred from one smart device to another via cross-platform, third-party cloud services. Smart technologies, such as, Smartphones are playing dynamic roles in order to successfully complete our daily routines and official tasks that require access to all types of critical data. Before the advent of these smart technologies, securing critical information was quite a challenge. However, after the advent and global adoption of such technologies, information security has become one of the primary and most fundamental task for security professionals. The integration of social media has made this task even more challenging to undertake successfully. To this day, there are plentiful studies in which numerous authentication and security techniques were proposed </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/logo.gif" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
           <p>developed for Smartphone and cloud computing technologies. These studies have successfully addressed multiple authentication threats and other related issues in existing Smartphone and cloud computing technologies. However, to the best of our understanding and knowledge, these studies lack many aspects in terms of authentication attacks, logical authentication analysis and the absence of authentication implementation scenarios. Due to these authentication anomalies and ambiguities, such studies cannot be fully considered for successful implementation.
</p>
          </div>
          <div class="image"> <a href="#"><img src="css/images/logo.gif" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       
        
        <p><center><font size="5" color="black">View Data & Send to Edge Server</font></center></p><br/>
    <style>
        th{
            color: #50aac3;
        }
         tr{
            color: black;
        }
        
        td{
            text-align: center;
        }
    </style>
     
    
    <% 
String user = session.getAttribute("email").toString();

  SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
    
    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate;
                        System.out.println(dt);
                        
                        String k = dt.substring(0,2);
                        
                        System.out.println(k);
                        
try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from upload where dt >= "+k+" ");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
        <th>File Name</th>
        <th>Uploaded Date</th>
        <th>Owner</th>
        <th>Data</th>
       
        <th>Send</th>
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <td><%=rs.getString("filename")%></td>
                <td><%=rs.getString("cdate")%></td>
                <td><%=rs.getString("email")%></td>
                <td><textarea><%=rs.getString("cipher")%></textarea></td>
              
       <td><a href="mobilesource_send_act.jsp?filename=<%=rs.getString("filename")%>&email=<%=rs.getString("email")%>"><font color="#0d637d" size="3">click</font></a> </td>
      
         
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
        <br><br><br>
         <hr>    
        
            
    </div>
    <br>
    
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="rf"></a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<script type="text/javascript">pageLoaded();</script>
<!-- END PAGE SOURCE -->
</body>
</html>