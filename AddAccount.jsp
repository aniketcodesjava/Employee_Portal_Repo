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

 String s1,s2,s3,s4,s5,s6;
 s1=request.getParameter("n1");
 s2=request.getParameter("n2");
 s3=request.getParameter("n3");
 s4=request.getParameter("n4");
 s5=request.getParameter("n5");
 s6=request.getParameter("n6");
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
 PreparedStatement ps =con.prepareStatement("insert into account (customerId, account_no,account_type,opening_date,balance,status)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
  ps.executeUpdate();
  out.println("<script>");
  out.println("alert('Account Add Successfully')");
  out.println("window.location.href='AccountManagement.jsp'");
  out.println("</script>");
%>

</body>
</html>