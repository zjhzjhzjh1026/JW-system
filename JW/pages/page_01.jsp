<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'page0.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" type="text/css" href="./css/jquery-ui-1.7.1.custom.css">
   <link rel="stylesheet" type="text/css" href="./css/jquery-ui.theme.css">
   <link rel="stylesheet" type="text/css" href="./css/jquery-ui.structure.css"> 
   <script type="text/javascript" src="./js/jquery-min-lastest.js"></script>  
   <script src="./js/jquery-ui-all-min-lastest.js" type="text/javascript"></script>

  </head>
  
  <body>
  <div style="width:1320px; height:600px; margin:0px;"> 
  <div style="width:300px; float:left">   
         <div id="accordion">
        <h3><a href="./pages/page_0_01.jsp">个人信息--菜单1</a></h3>
        <div>
                                            菜单1的内容<br />
                                            菜单1的内容<br />
                                            菜单1的内容<br />
                                            菜单1的内容<br />
                                            菜单1的内容<br />
                                            菜单1的内容<br />
                                           菜单1的内容<br />
        </div>
        <h3><a href="./pages/page_0_01.jsp">个人信息--菜单2</a></h3>
           <div>菜单2的内容</div>
        
        <h3><a href="./pages/page_0_01.jsp">个人信息--菜单3</a></h3>
           <div>菜单3的内容</div> 
        <h3><a href="./pages/page_0_01.jsp">个人信息--菜单4</a></h3>
           <div>菜单4的内容</div> 
        <h3><a href="./pages/page_0_01.jsp">个人信息--菜单5</a></h3>
           <div>菜单5的内容</div>        
        <h3><a href="./pages/page_0_01.jsp">个人信息--菜单6</a></h3>
           <div>菜单6的内容</div>   
  
     
      </div>
    </div>
   <div style="width:1000px;float:left">
   <iframe src="./pages/information.jsp" frameborder="0" name="myframe1" style="height:100%; width:100%"> </iframe>
   </div>
</div>
 <!--    <img alt="No Network" usemap="#mymap2" src="./images/T1.jpg"/>
    <map name="mymap2">
     <area onfocus="blur(this);" href="./pages/page_0_01.jsp" shape="rect"  coords="70,65,130,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_02.jsp" shape="rect"  coords="190,65,250,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_03.jsp" shape="rect"  coords="310,65,370,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_04.jsp" shape="rect"  coords="425,65,485,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_05.jsp" shape="rect"  coords="540,65,600,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_06.jsp" shape="rect"  coords="650,65,710,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_07.jsp" shape="rect"  coords="770,65,830,160" alt="Main Page">
     <area onfocus="blur(this);" href="./pages/page_0_08.jsp" shape="rect"  coords="890,65,950,160" alt="Main Page">
      </map> -->

  
    <script>
       $(function(){

          $("#accordion").accordion({
            icon:{
              header: "ui-icon-circle-arrow-e",
              headerSelected: "ui-icon-circle-arrow-s"
            },
            event:"mouseover"
          });
       });
    </script>
  </body>
</html>
