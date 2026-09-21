package com.aniket;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aniket.models.Attendence;
import com.aniket.models.Employee1;
import com.aniket.models.LeaveReqInfo;
import com.aniket.models.Payment;
import com.aniket.models.Project;
import com.aniket.models.ProjectReport;
import com.aniket.models.showMessage;
import com.aniket.serviceLayer.ServiceLayer;
import com.aniket.serviceLayer.ServiceLayer2;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController
{
	@Autowired
   ServiceLayer2 sl;
	
	@Autowired
	ServiceLayer sl1;
	
   
	@RequestMapping("/empDashBoard")
   public String dash()
   {
	return "empDashBoard";
	   
   } 
	
	
	@RequestMapping("/HomeAdmin")
	public String home()
	{
		return "HomeAdmin";
		
	}
	
	
	@RequestMapping("/showEmployee")
	public String show(@ModelAttribute Employee1 emp,Model m)
	{
	   List<Employee1> emp1=sl.showEmp(emp);
	   System.out.println("our employee controller: "+emp1);
	   m.addAttribute("temp", emp1);
		return "showEmployee";
		
	}
	
	// delete employee
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable ("id") String eid)
	{
	   sl.delete(eid);
		System.out.println("id deleted successfully !"+eid);
		
	
		
		return "redirect:/showEmployee";
	}
	
	
	
	@RequestMapping("/AddEmployee")
     public String addEmp()
     {
		
		return "AddEmployee";
    	 
     }
	
	@RequestMapping("/SaveData1")
	public String SaveData1(@ModelAttribute Employee1 emp)
	{
		sl.SaveData1(emp);
		System.out.println("employee add successfully !"+emp);
		return "HomeAdmin";
		
	}
	
	@RequestMapping("/update/{id}")
	 public String updateemp(@ModelAttribute Employee1 emp,@PathVariable ("id") String eid,Model  m)
	 {
		
		List<Employee1> em= sl.showUpdate(eid);
		
		  Employee1 employee= em.get(0);
	
		 System.out.println("All employee information is: "+employee);
		 m.addAttribute("demo", employee);
		return "UpdateEmp";		 
	 }
	
	 @RequestMapping("/EditData")
	 public String EditData(@ModelAttribute Employee1 emp)
	 {
		 sl.EditData(emp);
		 System.out.println("value update successfully in controller "+emp);
		return "redirect:/showEmployee";
		 
	 }
	 
	 @RequestMapping("/ShowleaveRequests")
	 public String show(@ModelAttribute LeaveReqInfo slr, Model m)
	 {
		List<LeaveReqInfo>q3= sl.showRequest(slr);
		m.addAttribute("temp", q3);
		System.out.println("all leave requests is "+q3);
		return "ShowleaveRequests";
		 
	 }
	 
	 @RequestMapping("/cancel/{lid}")
	 public String leaveCancel(@PathVariable ("lid") int id)
	 {
	
		 String name= sl1.getLeaveById(id);
		 
		 System.out.println("employee name:"+name);
		sl.leaveCancel(id);	
		
		System.out.println("Leave Cancel By Controller !"+id);
		String message="Your Leave Request Cancel By Manager";
		sl.saveMessage(name, message);
		System.out.println("name and message are:"+name+" "+message);
		return "redirect:/ShowleaveRequests";
		 
	 }
	 
	 @RequestMapping("/approve/{lid}")
	 public String leaveApprove(@PathVariable ("lid")int id)
	 {
		  String name=sl1.getLeaveById(id);
		  System.out.println("employee name:"+name);
		   sl.leaveApprove(id); 
		   
		  System.out.println("leave approved by cotroler"+id);
		  String message="Your Leave Request Approved By Manager";
		  sl.saveMessage(name, message);
		  System.out.println("name and message are:"+name+" "+message);
		  return "redirect:/ShowleaveRequests";
	 }
	 
	 
	 @RequestMapping("/MessageBox")
	 public String showMsg(Model m)
	 {
		List<showMessage>sh1=sl.showMsg();
		System.out.println("our message is "+sh1);
		m.addAttribute("msg", sh1);
		return "MessageBox";
		 
	 }
	
	 @RequestMapping("/showAttendence")
	  public String showAttendence(@ModelAttribute Attendence att,Model M)
	  {
		List<Attendence>l2=sl.showAttendence(att);
		M.addAttribute("temp", l2);
		System.out.println("total employee present in today is :"+l2);
		return "showAttendence";
		  
	  }
	 
	  @RequestMapping("/Departments")
	  public String Dept(@ModelAttribute Employee1 emp,Model m)
	  {
		List<Object[]>obj=sl.showDeptEmp(emp);
		
		 for(Object[] ob:obj)
		    {
		    		System.out.println("ID"+ob[0]);
		    		System.out.println("Name"+ob[1]);
		    		System.out.println("Department"+ob[2]);
		    		System.out.println("Designation"+ob[3]);
		    }
		
		System.out.println("all employee wise department are: "+obj);
		m.addAttribute("temp", obj);
		return "Departments";
		  
	  }
	  
	  
	  @RequestMapping("/Projects")
	  public String projects()
	  {
		return "Projects";
		  
	  }
	  
	  @RequestMapping("/assignProject")
	  public String assignPro()
	  {
		return "assignProject";
		  
	  }
	  
	  @RequestMapping("/saveProject")
	  public String saveProject(@ModelAttribute Project pro,HttpSession hs)
	  {
		  sl.saveProjects(pro);
		  System.out.println("Project Values Save Successfully !"+pro);
		  hs.setAttribute("temp", "Project Assign Successfully ");
		  return "redirect:/Projects";
		  
	  }
	  
	  @RequestMapping("/showProjectRepo")
	  public String showProjectRep(@ModelAttribute ProjectReport prj,Model m)
	  {
		List<ProjectReport>p2=sl.showReport(prj);
		m.addAttribute("temp", p2);
		System.out.println("all projec reports are: "+p2);
		 return "showProjectRepo";
		  
	  }
	  
	  @RequestMapping("/Payment")
	  public String Pay()
	  {
		return "Payment";		  
	  }
	  
	  @RequestMapping("/savePayment")
	  public String SavePay(@ModelAttribute Payment p1,Model m,HttpSession hs)
	  {
		sl.savePayme(p1);
		System.out.println("payment save successfully by controller class "+p1);
		hs.setAttribute("msg", "Payment Save Successfully ");
		m.addAttribute("temp", p1);
		return "redirect:/Payment";
		  
	  }
}
