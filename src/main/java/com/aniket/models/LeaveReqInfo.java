package com.aniket.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class LeaveReqInfo
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
  private int lid;	
  private String empId;
  private String empName;
  private String empDepartment;
  private String empDesignation;
  private String leaveType;
  private String priority;
  private String leaveStartDate;
  private String leaveEndDate;
  private long contactNumber;
  private String handoverPerson;
  private String reason;
  public int getLid() {
	return lid;
  }
  
  public String getEmpId() {
	return empId;
  }
  public void setEmpId(String empId) {
	this.empId = empId;
  }
  public String getEmpName() {
	return empName;
  }
  public void setEmpName(String empName) {
	this.empName = empName;
  }
  public String getEmpDepartment() {
	return empDepartment;
  }
  public void setEmpDepartment(String empDepartment) {
	this.empDepartment = empDepartment;
  }
  public String getEmpDesignation() {
	return empDesignation;
  }
  public void setEmpDesignation(String empDesignation) {
	this.empDesignation = empDesignation;
  }
  public String getLeaveType() {
	return leaveType;
  }
  public void setLeaveType(String leaveType) {
	this.leaveType = leaveType;
  }
  public String getPriority() {
	return priority;
  }
  public void setPriority(String priority) {
	this.priority = priority;
  }
  public String getLeaveStartDate() {
	return leaveStartDate;
  }
  public void setLeaveStartDate(String leaveStartDate) {
	this.leaveStartDate = leaveStartDate;
  }
  public String getLeaveEndDate() {
	return leaveEndDate;
  }
  public void setLeaveEndDate(String leaveEndDate) {
	this.leaveEndDate = leaveEndDate;
  }
  public long getContactNumber() {
	return contactNumber;
  }
  public void setContactNumber(long contactNumber) {
	this.contactNumber = contactNumber;
  }
  public String getHandoverPerson() {
	return handoverPerson;
  }
  public void setHandoverPerson(String handoverPerson) {
	this.handoverPerson = handoverPerson;
  }
  public String getReason() {
	return reason;
  }
  public void setReason(String reason) {
	this.reason = reason;
  }
  @Override
  public String toString() {
	return "LeaveReqInfo [lid=" + lid + ", empId=" + empId + ", empName=" + empName + ", empDepartment=" + empDepartment
			+ ", empDesignation=" + empDesignation + ", leaveType=" + leaveType + ", priority=" + priority
			+ ", leaveStartDate=" + leaveStartDate + ", leaveEndDate=" + leaveEndDate + ", contactNumber="
			+ contactNumber + ", handoverPerson=" + handoverPerson + ", reason=" + reason + "]";
  }
  
  
  
}
