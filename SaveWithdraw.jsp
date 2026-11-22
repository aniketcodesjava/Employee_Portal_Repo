<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
   Double s3=null;
  String s1,s2,w3,s4,s5,s6;
  s1=request.getParameter("n1");
  s2=request.getParameter("n2");
  w3=request.getParameter("n3");
  s3=Double.parseDouble(w3);
  s4=request.getParameter("n4");
  s5=request.getParameter("n5");
  s6=request.getParameter("n6");
 
   double subBal=0.00;
  
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankmanagement","root","123456");
   PreparedStatement ps=con.prepareStatement("select balance from account where accId='"+s1+"'");
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
	  Double bal=rs.getDouble(1);
	  
	   if(bal>=s3 && s3>0)
	   {
	     subBal=bal-s3;
	     PreparedStatement ps1=con.prepareStatement("update account set balance='"+subBal+"' where accId='"+s1+"'");
	      ps1.executeUpdate();
	      
	      PreparedStatement ps2=con.prepareStatement("insert into transactions(accId,transaction_type,amount,transaction_date,description,reference_number)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
	       ps2.executeUpdate();
	          out.println("<script>");
			  out.println("alert('Withdraw Amount Successfull')");
			  out.println("window.location.href='AdminDashBoard.jsp';");
			  out.println("</script>");
	       
	   }
	   else
	   {
		      out.println("<script>");
			  out.println("alert('Insufficient Balance !')");
			  out.println("window.location.href='withdraw.jsp';");
			  out.println("</script>");
	   }	   
   
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