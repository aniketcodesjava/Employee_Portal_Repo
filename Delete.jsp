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

String id=request.getParameter("id");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
PreparedStatement ps=con.prepareStatement("delete from holder where id='"+id+"'");
ps.executeUpdate();
out.println("<script>");
out.println("alert('Accound delete')");
out.println("window.location.href='CustomerManagement.jsp'");
out.println("</script>");
%>

</body>
</html>