<%@page import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String s1,s2;
s1=request.getParameter("n1");
s2=request.getParameter("n2");

String email="";
String usename="";
String password="";

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
PreparedStatement ps=con.prepareStatement("select email,usename,password from holder where email='"+s1+"' or usename='"+s1+"'");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	email=rs.getString("email");
	usename=rs.getString("usename");
	password=rs.getString("password");
 
 if((s1.equalsIgnoreCase(email) || s1.equalsIgnoreCase(usename)) && s2.equalsIgnoreCase(password))
 {
	 
	 
	  out.println("<script>");
	  out.println("alert('Login Successfull')");
	  out.println("window.location.href='HolderDashboard.jsp';");
	  out.println("</script>");
	  session.setAttribute("temp", s1);
	 
 }
 else
 {
	  out.println("<script>");
	  out.println("alert('Login fail !')");
	  out.println("window.location.href='holderLogin.jsp';");
	  out.println("</script>");
 }
}

%>

</body>
</html>