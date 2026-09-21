package com.aniket.serviceLayer;




import java.util.List;

import com.aniket.models.Attendence;
import com.aniket.models.Employee1;
import com.aniket.models.LeaveReqInfo;
import com.aniket.models.PasswordResetOtp;
import com.aniket.models.Payment;
import com.aniket.models.Project;
import com.aniket.models.ProjectReport;


public interface ServiceLayer 
{
    public void SaveData(Employee1 e1);
    public Employee1 Checklogin(Employee1 e1);
    public void saveOtp(PasswordResetOtp resetOtp);
    public boolean verifyOTP(String email,String otp);
    public void UpdatePassword(String emails,String passwords);
    public void SaveLeaveData(LeaveReqInfo info);
    public String getLeaveById(int id);
    public void saveAttend(Attendence attend);
    public List<Project>showPro(Project p1);
    public void saveRep(ProjectReport prepo);
    public List<Payment>showPaySlip(Payment pay);
}
