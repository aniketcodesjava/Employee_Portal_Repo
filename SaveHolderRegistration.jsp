<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

  String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
  s1=request.getParameter("n1");
  s2=request.getParameter("n2");
  s3=request.getParameter("n3");
  s4=request.getParameter("n4");
  s5=request.getParameter("n5");
  s6=request.getParameter("n6");
  s7=request.getParameter("n7");
  s8=request.getParameter("n8");
 
  
  String mobile="";
  String email="";
  String identyNumber="";
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
  PreparedStatement ps=con.prepareStatement("select * from holder where mobile='"+s4+"' or email='"+s5+"' or identyNumber='"+s8+"'");
  ResultSet rs=ps.executeQuery();
   

  if(rs.next())
  {
	  out.println("<script>");
	  out.println("alert('Duplicate information')");
	  out.println("window.location.href='holderRegister.jsp';");
	  out.println("</script>");
  }
  else
  {
  PreparedStatement ps1=con.prepareStatement("insert into holder values('"+UUID.randomUUID().toString()+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
  ps1.executeUpdate();
  out.println("<script>");
  out.println("alert('Add Holder successfully')");
  out.println("window.location.href='CustomerManagement.jsp';");
  out.println("</script>");
  }
  con.close();
  ps.close();
%>

</body>
</html>