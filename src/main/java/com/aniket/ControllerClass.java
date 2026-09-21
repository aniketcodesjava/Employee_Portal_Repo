package com.aniket;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aniket.models.Attendence;
import com.aniket.models.Employee1;
import com.aniket.models.LeaveReqInfo;
import com.aniket.models.PasswordResetOtp;
import com.aniket.models.Payment;
import com.aniket.models.Project;
import com.aniket.models.ProjectReport;
import com.aniket.serviceLayer.ServiceLayer;
import com.aniket.serviceLayer.ServiceLayer2;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpSession;

@Controller
public class ControllerClass
{
    @Autowired
    ServiceLayer sl;
    
    @Autowired
    ServiceLayer2 sl1;


    @RequestMapping("/Reg")
    public String reg()
    {
        return "Registration";
    }


    @RequestMapping("/SaveData")
    public String SaveData(@ModelAttribute Employee1 e1)
    {
        sl.SaveData(e1);

        return "Login";
    }


    @RequestMapping("/Login")
    public String Login()
    {
        return "Login";
    }
    
  

    @RequestMapping("/Checklogin")
    public String Checklogin(@ModelAttribute Employee1 e1, Model m,HttpSession session)
    {
        Employee1 ee = sl.Checklogin(e1);

        if(ee != null)
        {
            System.out.println("Login Successful : " + ee);
              session.setAttribute("employee", ee);
              System.out.println(session.getAttribute("temp"));
              System.out.println(ee);
              
              if(ee.getEmpEmail().equals("admin2002@gmail.com") && ee.getEmpPassword().equals("admin@123"))
              {
            	  return "HomeAdmin";
              }
              else
              {
             
            return "HomePage";
              }
        }

        System.out.println("Login Failed !");

        m.addAttribute("failed", "Invalid email and password!");

        return "Login";
    }


     

    @RequestMapping("/ForgotPassword")
    public String ForgotPassword()
    {
        return "ForgotPassword";
    }
    
    
   
    
    
    // Send OTP Related Methods
    @RequestMapping("/SendOTP")
     public String sendOtp(@RequestParam ("email") String email,HttpSession hs)
     {
    	  try
    	  {
    	
    		  // Generate 6 Digit OTP
    		 
    		 Random random=new Random();
    		 int otp= 100000+random.nextInt(900000);
    		 System.out.println("OTP : "+otp);
    		 
    		 hs.setAttribute("email", email);
    		 
    		 
    		 PasswordResetOtp resetOtp = new PasswordResetOtp(); 
    		 resetOtp.getId();
    		 resetOtp.setEmail(email);
    		 resetOtp.setOtp(String.valueOf(otp)); 
    		 resetOtp.setExpiryTime(LocalDateTime.now().plusMinutes(5));
    		 resetOtp.setVerified(false);
    		 
    		 
    		 sl.saveOtp(resetOtp);
    		 System.out.println("Otp Save in database");
    		 
    		 // Gmail SMTP Configuration
    		 
    		 Properties proper=new Properties();
    		 
    		 proper.put("mail.smtp.host", "smtp.gmail.com");
    		 proper.put("mail.smtp.port", "587");
    		 proper.put("mail.smtp.auth", "true");
    		 proper.put("mail.smtp.starttls.enable", "true");
    	
    		 
    		 
    		 
    		 
    		 
    		 // Sender Email
    		 
    		 String senderEmail="aniketsawant2416@gmail.com";
    		 
    		 // GmailApp Password
    		 
    		 String senderPassword="hecsynbzrwvnbniu";
    		 
    		 Session mailSession=Session.getInstance(proper,new Authenticator()
    				 {
    			        protected PasswordAuthentication getPasswordAuthentication()
    			        {
    			        	return new PasswordAuthentication(senderEmail,senderPassword);
    			        }
    				 }
    		 );
    		 
    		 // Create Email
    		 
    		  Message message=new MimeMessage(mailSession);
    		  
    		  message.setFrom(new InternetAddress(senderEmail));
    		  
    		  message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
    		  
    		  message.setText("Your Password Reset OTP is:"+otp+
    				          "\n\nThis OTP Is valid for 5 minutes."+
    				           "\n\nPlease do not share this OTP with anyone."
    				           + "\n\nHey Mr. Give me your account detailes");
    		  
    		  // Send Email
    		  Transport.send(message);
    		  System.out.println("OTP sent successfully to:"+email);
    		  return "VerifyOTP";
     }
      catch(Exception e)
      {
    	  e.printStackTrace();
    	  return "ForgotPassword";
    	  	 
      }  

     }
   
    
    
 // Verify OTP
    
       @RequestMapping("/VerifyOTP")
        public String verifyOTP(
         @RequestParam("email") String email,
         @RequestParam("otp") String otp) {

     boolean result = sl.verifyOTP(email, otp);

     if(result)
     {
         System.out.println("OTP Verified Successfully!");

         return "UpdatePassword";
     }

     System.out.println("Invalid or Expired OTP!");

     return "Login";
      }

    
       
        // editPassword 
       
         @RequestMapping("/editPassword")
         public String editPassword(@ModelAttribute Employee1 emp, @RequestParam ("empPassword") String password, 
        		 @RequestParam ("empConfirmPassword") String empConfirmPassword,Model m, HttpSession hs)
         {
        	 String email=(String) hs.getAttribute("email");
        	 System.out.println("my email= "+email);
        	 System.out.println("my password= "+password);
        	 System.out.println("my Confirmed password= "+empConfirmPassword);
        	 
        	 if(email==null)
        	 {
        		 m.addAttribute("msg", "Session expired. Please try forgot password again.");
        		 return "ForgotPassword";
        	 }
        	 
        	 if(!password.equals(empConfirmPassword))
        	 {
        		 
			  m.addAttribute("msg", "Password and Confirmed password do not match !");
			 return "UpdatePassword";
        	 }
        	 sl.UpdatePassword(email, password);
        	 
          	 m.addAttribute("msg","Password Updated Successfully !");
        	 return "Login";
         } 
         
         
         // Leave Request Information
         
         @RequestMapping("/LeaveRequests")
    	 public String empLeaveReq()
    	 {
    		return "LeaveRequests";
    		 
    	 }
         
          @RequestMapping("/submitLeave")
          public String saveLeaveInfo(LeaveReqInfo info,Model m)
          {
        	  sl.SaveLeaveData(info);
        	  m.addAttribute("message", "Form Submitted Successfull !");
        	  System.out.println("leave data save successfully !");
			return "HomePage";
        	  
          }
          
          
          @RequestMapping("/Attendance")
          public String Attend()
          {
			return "Attendance";
        	  
          }
          
          
          @RequestMapping("/markAttendance")
          public String markAttend(@ModelAttribute Attendence att,Model m)
          {
        	 
        	  sl.saveAttend(att);
			  System.out.println("Attendene Add Successfully !"+att);
			  m.addAttribute("atmsg", "Attendence Add Successfully ");
			  m.addAttribute("temp", att);
			  return "HomePage";
          }
          
         
          
          @RequestMapping("/showProjects")
          public String showProject(@ModelAttribute Project pro,Model m)
          {
        	 List<Project>l4= sl.showPro(pro);
        	 System.out.println("Projects Are :"+l4);
        	 m.addAttribute("temp", l4);
        	  return "showProjects";
          }
          
          @RequestMapping("/ProjectReports")
          public String promsg()
          {
			return "ProjectReports";
        	  
          }
          
          @RequestMapping("/saveReport")
          public String PReport(@ModelAttribute ProjectReport pp,Model m,HttpSession hs)
          {
        		  sl.saveRep(pp);
        	  System.out.println("Project Report Save Successfully !"+pp);
        	  hs.setAttribute("temp1", "Message Send Successfully ");
        	  m.addAttribute("temp", pp);
        	   return "redirect:/showProjects";		     	  
          }
          
          @RequestMapping("/PaymentSlip")
          public String showSlip(@ModelAttribute Payment p1,Model m)
          {
        	List<Payment>l4=sl.showPaySlip(p1);
        	System.out.println("Payment Record In Controller Class is "+l4);
        	m.addAttribute("temp", l4);
			return "PaymentSlip";
        	  
          }
          
          @RequestMapping("/About")
          public String abo()
          {
			return "About";
        	  
          }
          
          @RequestMapping("/MyProfile")
          public String abo1(Employee1 e1,Model m)
          {
        	List<Employee1>em=sl1.showEmp(e1);
        	m.addAttribute("temp", em);
			return "MyProfile";
        	  
          }
         
     }


















