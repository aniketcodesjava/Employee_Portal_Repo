package com.aniket.serviceLayer;

import java.util.List;

import com.aniket.models.Attendence;
import com.aniket.models.Employee1;
import com.aniket.models.LeaveReqInfo;
import com.aniket.models.Payment;
import com.aniket.models.Project;
import com.aniket.models.ProjectReport;
import com.aniket.models.showMessage;

public interface ServiceLayer2
{
	 public List<Employee1>showEmp(Employee1 e1);
	 public void delete(String eid);
	 public void SaveData1(Employee1 e1);
	 public List<Employee1> showUpdate(String eid);
	 public void EditData(Employee1 e1);
	 public List<LeaveReqInfo> showRequest(LeaveReqInfo leavReq);
	 public void leaveCancel(int id);
	 public void leaveApprove(int id);
	 public void saveMessage(String name, String message);
	 public List<showMessage> showMsg();
	 public List<Attendence>showAttendence(Attendence attend);
	 public List<Object[]> showDeptEmp(Employee1 emp);
	 public void saveProjects(Project pro);
	 public List<ProjectReport>showReport(ProjectReport pro);
	 public void savePayme(Payment pay);
	 
}
