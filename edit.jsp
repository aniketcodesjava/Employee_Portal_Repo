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
   
    String s0,s1,s2,s3,s4,s5,s6,s7,s8;
    s0=request.getParameter("n0");
    s1=request.getParameter("n1");
    s2=request.getParameter("n2");
    s3=request.getParameter("n3");
    s4=request.getParameter("n4");
    s5=request.getParameter("n5");
    s6=request.getParameter("n6");
    s7=request.getParameter("n7");
    s8=request.getParameter("n8");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
    PreparedStatement ps=con.prepareStatement("update holder set name='"+s1+"',dob='"+s2+"',gender='"+s3+"',mobile='"+s4+"',email='"+s5+"',address='"+s6+"', identyType='"+s7+"',identyNumber='"+s8+"' where id='"+s0+"'");
    int z=ps.executeUpdate();
     if(z>0)
    {
      out.println("<script>");
	  out.println("alert('Record Update Successfully')");
	  out.println("window.location.href='CustomerManagement.jsp';");
	  out.println("</script>");
    }
    else
    {
    	 out.println("<script>");
   	  out.println("alert('Record Update Fail')");
   	  out.println("window.location.href='CustomerManagement.jsp';");
   	  out.println("</script>");

    }
    %>
</body>
</html>