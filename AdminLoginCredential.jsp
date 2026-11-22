<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

  String s1,s2;
  s1=request.getParameter("email");
  s2=request.getParameter("password");
  
  if((s1.equalsIgnoreCase("aniket@gmail.com")||s1.equalsIgnoreCase("Aniket")) && s2.equalsIgnoreCase("admin@123"))
  {
	  out.println("<script>");
	  out.println("alert('Login Successfull')");
	  out.println("window.location.href='AdminDashBoard.jsp';");
	  out.println("</script>");
	  session.setAttribute("temp",s1);
  }

  else
  {
	  out.println("<script>");
	  out.println("alert('Login Fail')");
	  out.println("window.location.href='AdminLogin.jsp';");
	  out.println("</script>");
  }
  
  
%>

</body>
</html>