<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="collaborative.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Towards Efficient Cryptographic Data Validation Service in Edge Computing </title>
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
if(request.getParameter("msg")!=null){%>
    
   <script>alert('Mobile Source Registration Success..!')</script>
}  

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('Login Failed..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
    <h1>Towards Efficient Cryptographic Data Validation Service in Edge Computing </h1>
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
   <ul>
     <li><a href="cloud_home.jsp">HOME</a></li>
      <li><a  class="active"  href="cloud_view_files.jsp">View Files</a></li>    
      <li><a href="user_request.jsp">View Request</a></li>      
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
            <p>THe world has witnessed an exponential growth of mobile devices including mobile phones, wearable devices,tablets, smart vehicle and Internet-of-Things devices over the last decade The enormous network often causes network congestion and increases network latency. To address this issue, edge computing, a newcomputing paradigm, has emerged to distribute computingcapacities from centralized cloud to distributed edge servers. Each edge server is powered by one or more physicaldevices and is attached to a base station or an access point that is geographically close to app users? mobile devices.</p>
  
         </div>
          <div class="image"> <a href="#"><img src="css/images/1.png" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          
          <div class="image"> <a href="#"><img src="css/images/2.jpg" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>

<%
String filename = request.getParameter("filename");

String email = request.getParameter("email");

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from mobiledestination");
        ResultSet rs=pst.executeQuery();




%>


<div id="main">
  <div class="shell">
    <div id="main-boxes">
       <center><p><font size="5" color="black">Send to Mobile Destination </font></p><br/></center>
     
    <form action="cloud_view_files_act.jsp" method="post">
    <center><table width="281" border="0" >

    <tr><td><font color="black"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Filename :</td><td><input type="text" name="filename" value="<%=filename%>" readonly required="" /></td></tr>
    <tr><td><font color="black"> Mobile Source Name :</td><td><input type="text" name="email" value="<%=email%>" readonly required="" /></td></tr>
    <tr>
    <td height="43"><font color="black">Select Mobile Destination</td>
    <td><select name="md" style="width:170px;" required="">
    <option>--Select--</option>
    <% 
    while(rs.next()){  
    
%>
    <option><%=rs.getString("username")%></option>
  
    <%}%>
    </select></td>
    </tr>
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Send" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>
             
    </div>
    <% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    
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