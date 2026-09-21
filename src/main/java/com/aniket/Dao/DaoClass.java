package com.aniket.Dao;

import java.time.LocalDateTime;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aniket.models.Attendence;
import com.aniket.models.Employee1;
import com.aniket.models.LeaveReqInfo;
import com.aniket.models.PasswordResetOtp;
import com.aniket.models.Payment;
import com.aniket.models.Project;
import com.aniket.models.ProjectReport;
import com.aniket.serviceLayer.ServiceLayer;

import jakarta.transaction.Transactional;

@Transactional  //"This class contains business/service logic. Create its object as a Spring Bean."
@Service        //"Execute this method as one database transaction.
public class DaoClass implements ServiceLayer
{
	@Autowired
    SessionFactory sf;

	public void setSf(SessionFactory sf) 
	{
		this.sf = sf;
	}

	@Override
	public void SaveData(Employee1 e1)
	{
	    Session ss=sf.getCurrentSession();
	    ss.persist(e1);
	    System.out.println("Table Successfully Inserted !");
	}

	@Override
	public Employee1 Checklogin(Employee1 e1)
	{
	     Session ss=sf.getCurrentSession();
	      Query  <Employee1> emp=ss.createQuery("from Employee1 where empEmail=:empEmail and empPassword=:empPassword",Employee1.class);
	        emp.setParameter("empEmail",e1.getEmpEmail());
	        emp.setParameter("empPassword",e1.getEmpPassword());
	        
	        
	        Employee1 e2=emp.uniqueResult();
	        if(e2 != null)
	        {
	        	System.out.println("Login Successfully !");
	        	System.out.println("Login with e2 !"+e2);
	        	return e2;
	        }
	        System.out.println("Login Failed !");
			return null;
		       
	}

	@Override
	public void saveOtp(PasswordResetOtp resetOtp)
	{
		Session ss=sf.getCurrentSession();
		ss.persist(resetOtp);
	  System.out.println("OTP Saved Successfully !");
		
	}

	@Override
	public boolean verifyOTP(String email, String otp)
	{
		Session ss=sf.openSession();
	Query<PasswordResetOtp> q1=ss.createQuery("from PasswordResetOtp where email=:email and otp=:otp",PasswordResetOtp.class);
		q1.setParameter("email", email);
		q1.setParameter("otp", otp);
	   PasswordResetOtp reset=q1.uniqueResult();
		
		if(reset==null)
		{
			return false;
		}
		if(reset.getExpiryTime().isBefore(LocalDateTime.now()))
		{
			return false;
		}
		return true;
	}


	@Override
	public void UpdatePassword(String emails, String passwords)
	{
		Session ss=sf.getCurrentSession();
		   Query q2=ss.createQuery("update Employee1 set empPassword=:passwords where empEmail=:emails ");
		    q2.setParameter("passwords", passwords);
		    q2.setParameter("emails", emails);
		    int result= q2.executeUpdate();
		   if(result>0)
		   {
			  System.out.println("password update successfully !");
		   }
		   else
		   {
			  System.out.println("password not updated !");
		   }	
	}

	@Override
	public void SaveLeaveData(LeaveReqInfo info)
	{
		Session ss=sf.getCurrentSession();
		ss.persist(info);
		System.out.println("Table Successfully Created :"+info);
		
	}

	@Override
	public String getLeaveById(int id) 
	{
		Session ss=sf.getCurrentSession();
		Query<String> q1= ss.createQuery("select empName from LeaveReqInfo where lid=:id",String.class);
		q1.setParameter("id", id);
	 String name= q1.uniqueResult();
		return name;
	}

	@Override
	public void saveAttend(Attendence attend) 
	{
		Session ss=sf.getCurrentSession();
		ss.persist(attend);
        System.out.println("Attend Register Successfully !");		
	}

	@Override
	public List<Project> showPro(Project p1) 
	{
	    Session ss=sf.getCurrentSession();
	    List<Project>l1=ss.createQuery("from Project",Project.class).list();
	    System.out.println("Projects Are:"+l1);
		return l1;
	}

	@Override
	public void saveRep(ProjectReport prepo)
	{
		Session ss=sf.getCurrentSession();
		ss.persist(prepo);
		System.out.println("Report Save Successfully !"+prepo);	
	}

	@Override
	public List<Payment> showPaySlip(Payment pay) 
	{
		Session ss=sf.getCurrentSession();
		List<Payment>l2= ss.createQuery("from Payment",Payment.class).list();
		System.out.println("Total Payment Slip Recored in Dao Class "+pay);
		return l2;
	}

	
	
}
