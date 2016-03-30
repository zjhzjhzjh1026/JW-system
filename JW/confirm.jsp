<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"contentType="text/html;charset=utf-8"%>
<HTML> 
<HEAD> 
<TITLE>连接池测试页面</TITLE> 
</HEAD> 
<BODY> 
<%out.println("<h1>test JDBC </h1>");%> 
<% 
String use1=request.getParameter("name");
String pass1=request.getParameter("password"); 
Context ctx = new InitialContext();     //建立Context对象
DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mytest");    //建立datasource对象
Connection conn=ds.getConnection();        //通过数据源对象建连接
Statement st=conn.createStatement(); 
/* prepare */

String sql="select * from account where username=binary '"+use1+"' AND pass=binary '"+pass1+"'"; 
ResultSet rs=st.executeQuery(sql); 

try {
if(!rs.next()){
/*  out.println("用户不存在或密码错误，拒绝访问");  */
 request.setAttribute("ms", "登录失败：用户不存在或密码错误！");
  request.getRequestDispatcher("index.jsp").forward(request,response);  
}

else {
     String temp1=rs.getString(2);
     String temp2=rs.getString(3);
/*  out.println(temp1);
out.println(temp2);   */
      session.setAttribute("temp1",temp1);
      session.setAttribute("login","2222");
      response.sendRedirect("Main.jsp"); 

}
} catch (Exception e) {
	e.printStackTrace();
try {
	rs.close();
	/* pstmt.close(); */
	conn.close();
} catch (SQLException ext) {
	// TODO Auto-generated catch block
	e.printStackTrace();}}
%>  
</BODY>
</HTML> 
