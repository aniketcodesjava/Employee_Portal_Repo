<%@page import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String s1,s2,s3;

s1=request.getParameter("n0");
s2=request.getParameter("n3");
s3=request.getParameter("n6");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
PreparedStatement ps =con.prepareStatement("update account set account_type='"+s2+"',status='"+s3+"' where customerId='"+s1+"'");
ps.executeUpdate();
out.println("<script>");
out.println("alert('Account Updated !')");
out.println("window.location.href='AccountManagement.jsp';");
out.println("</script>");

%>

</body>
</html>