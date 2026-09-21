package com.aniket.models;

import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Attendence
{
	@Id
  private String empId;
  private String empName;
  private String empDepartment;
  private String attendDate;
  private String status;
  private LocalTime checkIn;
  private LocalTime checkOut;
  private String workLocation;
  private String remarks;
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
  public String getAttendDate() {
	return attendDate;
  }
  public void setAttendDate(String attendDate) {
	this.attendDate = attendDate;
  }
  public String getStatus() {
	return status;
  }
  public void setStatus(String status) {
	this.status = status;
  }
  public LocalTime getCheckIn() {
	return checkIn;
  }
  public void setCheckIn(LocalTime checkIn) {
	this.checkIn = checkIn;
  }
  public LocalTime getCheckOut() {
	return checkOut;
  }
  public void setCheckOut(LocalTime checkOut) {
	this.checkOut = checkOut;
  }
  public String getWorkLocation() {
	return workLocation;
  }
  public void setWorkLocation(String workLocation) {
	this.workLocation = workLocation;
  }
  public String getRemarks() {
	return remarks;
  }
  public void setRemarks(String remarks) {
	this.remarks = remarks;
  }
  @Override
  public String toString() {
	return "Attendence [empId=" + empId + ", empName=" + empName + ", empDepartment=" + empDepartment + ", attendDate="
			+ attendDate + ", status=" + status + ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", workLocation="
			+ workLocation + ", remarks=" + remarks + "]";
  }
   
}
