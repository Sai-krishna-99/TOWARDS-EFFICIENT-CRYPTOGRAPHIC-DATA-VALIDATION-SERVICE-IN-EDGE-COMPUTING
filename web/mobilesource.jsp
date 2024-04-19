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
     <li><a href="index.html">HOME</a></li>
      <li><a class="active" href="mobilesource.jsp"> Mobile Source</a></li>
    <li><a href="eserver.jsp">Edge Server</a></li>
       <li><a href="cloud.jsp">Cloud Server</a></li>
        <li><a href="mobiledestination.jsp">Mobile Destination</a></li>
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
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       <center><p><font size="5" color="black">Mobile Source Login </font></p><br/></center>
     
    <form action="mobilesource_act.jsp" method="post">
    <center><table width="281" border="0" >

            <tr><td><font color="black"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email :</td><td><input type="text" name="username" required="" /></td></tr>
    <tr><td><font color="black"> Password :</td><td><input type="password" name="password" required="" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Login" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>
    <center><a href="mobilesource_reg.jsp"><font color="black" style="font-size: 21px">Click Here for Registration </font></a> </center>  
              
    </div>
    
    
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