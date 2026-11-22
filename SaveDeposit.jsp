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
     String s1=request.getParameter("n1");
     String s2=request.getParameter("n2");
     String d3=request.getParameter("n3");
     Double s3=Double.parseDouble(d3);
     String s4=request.getParameter("n4");
     String s5=request.getParameter("n5");
     String s6=request.getParameter("n6");
    
  Double balance=null;
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
PreparedStatement ps =con.prepareStatement("select balance from account where accId='"+s1+"'");
  ResultSet rs=ps.executeQuery();
  
  if(rs.next())
  {
    balance= rs.getDouble(1);
 
    
  Double addBal=s3+balance;
  
  PreparedStatement ps1=con.prepareStatement("update account set balance='"+addBal+"' where accId='"+s1+"'");
   ps1.executeUpdate();
   
   
   
   PreparedStatement ps2=con.prepareStatement("insert into transactions(accId,transaction_type,amount,transaction_date,description,reference_number)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
    int z= ps2.executeUpdate();
       System.out.println("check the z values without correct values "+z);
      out.println("<script>");
	  out.println("alert('Amount Depoiste Successfully ')");
	  out.println("window.location.href='AdminDashBoard.jsp';");
	  out.println("</script>");
     
  }
  
  else
  {
	  out.println("<script>");
	  out.println("alert('Invalid AccountId ')");
	  out.println("window.location.href='withdraw.jsp';");
	  out.println("</script>");
  }
%>
</body>
</html>