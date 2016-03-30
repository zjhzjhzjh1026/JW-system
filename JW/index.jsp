<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <base href="<%=basePath%>">
    
    <title>自助服务系统登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	
  </head>
  
  <body>
       <!--  <script>window.name="curWindow";</script> -->
        <table width=100% height=100% border="0" cellpadding="0" cellspacing="0" >
           <tr>
             <td width="100%" height="20%" colspan="3">      
              <a title="遇事不决问度娘~ = =！" href="http://www.baidu.com"> 
                <img alt="Can't display the title." width="100%"  src="./images/title.jpg"/>  
              </a> 
             </td>
           </tr>
           <tr>
             <td width ="12%" height="50%" style="background-image:url(images/mid_01.gif);  background-repeat:no-repeat; background-size:100% 100%;"></td>
             <td width ="17%" height="50%" style="background-image:url(images/mid_02.gif);  background-repeat:no-repeat; background-size:100% 100%;">
          <center><form method="post" target="_self" action="login.do">
                    <fieldset width="50%">
                      <legend>登录系统</legend>
                    Username:<input maxlength="10"  required autofocus placeholder="Enter your ID here" size= "20" class="log" type="text"  name="name"/><br/><br/>
                    Password:<input maxlength="10" required placeholder="Enter your password here" size= "20" class="log" type="password"  name="password"/><br/><br/>
                    Group:<select name="clas" >
                                 <option value="student">学生</option>
                                 <option value="teacher">教师</option>
                                 <option value="manager">管理员</option>  
                          </select> <br/>
                          <p id="ErrorMsg">
                          <%
                           String Msg=(String)session.getAttribute("ms");
                             if(Msg!=null)  out.println(Msg); 
                           %></p>
                          <br/>
                          <input type="submit" value=" 提交">
                          <input type="reset" value=" 重置">     
                    </fieldset>
                 </form></center> 
             </td>
              <td width ="57%" height="50%" style="background-image:url(images/mid_03.gif);  background-repeat:no-repeat; background-size:100% 100%;"></td>
           </tr>
           <tr>
             <td width ="100%" height="30%" colspan="3" style="background-image:url(images/bottom.gif);  background-repeat:no-repeat; background-size:100% 100%;">
             </td>
           </tr>
        </table>

  </body>
</html>
