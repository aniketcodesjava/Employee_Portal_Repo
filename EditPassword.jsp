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

String s1,s2,s3;
s1=request.getParameter("n1");
s2=request.getParameter("n2");
s3=request.getParameter("n3");

 if(!s2.equalsIgnoreCase(s3))
 {
	 out.println("<script>");
	 out.println("alert('Password and Confirmed Password Not Match !')");
	 out.println("window.location.href='ForgotPasswordHolder.jsp';");
	 out.println("</script>");
 }
 
 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
PreparedStatement ps=con.prepareStatement("update holder set password='"+s2+"' where email='"+s1+"'");
 int i= ps.executeUpdate();
 if(i>0)
 {
 out.println("<script>");
 out.println("alert('Password Updated Successfully')");
 out.println("window.location.href='holderLogin.jsp';");
 out.println("</script>");
 }
 else
 {
	 out.println("<script>");
	 out.println("alert('Invalid Email')");
	 out.println("window.location.href='ForgotPasswordHolder.jsp';");
	 out.println("</script>");
 }
 
 

%>

</body>
</html>