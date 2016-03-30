<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--  <%=request.getParameter("username")%>  --%>
 <%
   
   String loginMark=(String)session.getAttribute("login");
   if(loginMark!="2222") response.sendRedirect("./"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- <link rel="stylesheet" type="text/css" href="./css/style.css"> -->
	<link rel="stylesheet" type="text/css" href="./css/jquery-ui-1.7.1.custom.css">
   <link rel="stylesheet" type="text/css" href="./css/jquery-ui.theme.css">
    <link rel="stylesheet" type="text/css" href="./css/jquery-ui.structure.css"> 
   <script type="text/javascript" src="./js/jquery-min-lastest.js"></script>  
   <script src="./js/jquery-ui-all-min-lastest.js" type="text/javascript"></script>

  </head>
  
  <body  style="margin:0px">
  <%String temp1=(String)request.getParameter("name");
  session.setAttribute("temp1",temp1);
  session.setAttribute("ms",null); 
  %>
  <%--   <p id="check"></p>
  <% String gro=request.getParameter("clas"); System.out.println(gro);%>      ****获取用户名密码组别
  <script>                                         
  var name = <%=request.getParameter("name")%>; 
  var pass = <%=request.getParameter("password")%>; 
    alert("aa");
  document.getElementById("check").innerHTML = "username:"+name+"  password:"+pass; 
   </script>   --%>
   
<!--    <table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0" >
     <tr>
       <td style="overflow:hidden">
         <img name="main_title"  src="./images/main_title.jpg" style="max-height:90px" width="100%"/>
       </td> 
     </tr>
     <tr height="85%" style>
      
     </tr>
   </table> -->
 <div style="width:1364px;  margin:0px;  border:0px;">
  <div style="width:1114px; margin:0px; float:left;">
   <div style="height:50px;">
     <img name="main_title"  src="./images/t_01_01.gif" style="width:100%; height:100%;"/>
   </div>
   <div style="height:30px;"> 
     <img  src="./images/t_01_02.gif" usemap="#mymap1" style="width:100%; height:100%;"/>
   </div>
  </div>
  <div style="width:246px; height:80px; margin:0px;  float:left;">
    <img src="./images/t_02.gif" usemap="#mymap4" style="height:100%; width:100%" />
  </div>
 </div>
 
<div style="width:1364px; height:650px; margin:0px;">   
   <div style="width:1364px;">
   <iframe src="./pages/page_0.jsp" frameborder="0" name="myframe1" style="height:100%; width:100%"> </iframe>
   </div>
</div>

   <map  style="border:none"  name="mymap1">
     <area onfocus="blur(this);" href="./pages/page_0.jsp" shape="rect" target="myframe1" coords="32,2,80,32" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_01.jsp" shape="rect" target="myframe1"  coords="120,2,180,32" alt="Main Page"> 
     <area onfocus="blur(this);" href="./pages/page_02.jsp" shape="rect" target="myframe1"  coords="220,2,280,32" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_03.jsp" shape="rect" target="myframe1"  coords="315,2,375,32" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_04.jsp" shape="rect" target="myframe1"  coords="410,2,470,32" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_05.jsp" shape="rect" target="myframe1"  coords="510,2,570,32" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_06.jsp" shape="rect" target="myframe1"  coords="605,2,665,32" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_07.jsp" shape="rect" target="myframe1"  coords="700,2,760,32" alt="Main Page">
   </map>
   <map name="mymap4">
     <area onfocus="blur(this);" href="./pages/help-page.jsp" shape="rect" target="myframe1" coords="120,5,160,25" alt="Main Page">
     <area onfocus="blur(this);" href="./" shape="rect"  coords="190,5,230,25" alt="Main Page"> 
   </map> 
  </body>
</html>
