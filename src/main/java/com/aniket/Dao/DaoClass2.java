package com.aniket.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aniket.models.Attendence;
import com.aniket.models.Employee1;
import com.aniket.models.LeaveReqInfo;
import com.aniket.models.Payment;
import com.aniket.models.Project;
import com.aniket.models.ProjectReport;
import com.aniket.models.showMessage;
import com.aniket.serviceLayer.ServiceLayer2;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class DaoClass2 implements ServiceLayer2
{

	@Autowired
	SessionFactory sf; 
	
	@Override
	public List<Employee1> showEmp(Employee1 e1)
	{
		Session ss=sf.getCurrentSession();
		List<Employee1>q1= ss.createQuery("from Employee1",Employee1.class).list();
		 System.out.println("out employee are:"+q1);
		return q1;
	}

	@Override
	public void delete(String eid) 
	{
		Session ss=sf.getCurrentSession();
		   Employee1 e3=ss.find(Employee1.class, eid);
		   if(e3!=null)
		   {
		  ss.remove(e3);
		System.out.println("id removed successfully :"+eid);
		   }
		   else
		   {
			  System.out.println("id not found !");
		   }
		
	}

	@Override
	public void SaveData1(Employee1 e1)
	{
		Session ss=sf.getCurrentSession();
		ss.persist(e1);
		System.out.println("employee added successfully ");
	}

	@Override
	public List<Employee1> showUpdate(String eid)
	{
		Session ss=sf.getCurrentSession();
		List<Employee1>q2= ss.createQuery("from Employee1 where empId=:eid",Employee1.class).setParameter("eid", eid).list();
		
	  Employee1 emp=ss.find(Employee1.class, eid);
	  
		System.out.println("employee information is"+q2);
		System.out.println("employee all data is "+emp);
		return q2;	
	}

	@Override
	public void EditData(Employee1 e1) 
	{
		
		Session ss=sf.getCurrentSession();
		ss.merge(e1);
		System.out.println("data update successfully !"+e1);
	}

	@Override
	public List<LeaveReqInfo> showRequest(LeaveReqInfo leavReq)
	{
		Session ss=sf.getCurrentSession();
		List <LeaveReqInfo> q2= ss.createQuery("from LeaveReqInfo",LeaveReqInfo.class).list();
		System.out.println("all employee :"+q2);
		return q2;
	}

	@Override
	public void leaveCancel(int id)
	{
		Session ss=sf.getCurrentSession();
		 LeaveReqInfo re=ss.find(LeaveReqInfo.class, id);
		 if(re!=null)
		 {
			 ss.remove(re);
			 System.out.println("Approve Cancel Successfully !"+re);
		 }
		 else
		 {
			 System.out.println("Approve Id Not Found !"+re);
		 }
		
	}

	@Override
	public void saveMessage(String name, String message) 
	{
		Session ss=sf.getCurrentSession();
		showMessage m1=new showMessage(name,message);
		ss.persist(m1);
		System.out.println("Values are "+m1);
	}

	@Override
	public void leaveApprove(int id)
	{
		Session ss=sf.getCurrentSession();
		LeaveReqInfo m2=  ss.find(LeaveReqInfo.class, id);
		if(m2!=null)
		{
			ss.remove(m2);
			System.out.println("Approve successfull !");
		}
		else
			
		{
			System.out.println("Approval not succcessfull !");
		}
	}

	@Override
	public List<showMessage> showMsg() 
	{
		 Session ss=sf.getCurrentSession();
		 Query<showMessage>l1= ss.createQuery("from showMessage",showMessage.class);
		 System.out.println("messages are :"+l1);
		 return l1.getResultList();
		 
	}

	@Override
	public List<Attendence> showAttendence(Attendence attend)
	{
		Session ss=sf.getCurrentSession();
	    List<Attendence>l1= ss.createQuery("from Attendence",Attendence.class).list();
	    System.out.println("attendence are :"+l1);
		return l1;
	}

	@Override
	public List<Object[]> showDeptEmp(Employee1 emp) {

	    Session ss = sf.getCurrentSession();

	    List<Object[]> obj = ss.createQuery(
	        "SELECT e.empId, e.empName, e.empDepartment, e.designation " +
	        "FROM Employee1 e",
	        Object[].class
	    ).getResultList();
	    
	    System.out.println("Total employees: " + obj.size());

	    return obj;
	}

	@Override
	public void saveProjects(Project pro)
	{
		Session ss=sf.getCurrentSession();
		ss.persist(pro);
		System.out.println("Project Assign Successfully !"+pro);
	}


	@Override
	public List<ProjectReport> showReport(ProjectReport pro)
	{
		Session ss=sf.getCurrentSession();
		Query<ProjectReport>li=ss.createQuery("from  ProjectReport", ProjectReport.class);
		System.out.println("Project Reports "+li);
		return li.getResultList();
	}

	@Override
	public void savePayme(Payment pay)
	{
	  Session ss=sf.getCurrentSession();
	  ss.persist(pay);	
	  System.out.println("payment details are save into dao class "+pay);
	}
	
}
