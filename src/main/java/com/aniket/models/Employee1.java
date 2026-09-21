package com.aniket.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Employee1
{
	@Id
   private String empId;
   private String empName;
   private String empEmail;
   private String empMobile;
   private String empDob;
   private String empGender;
   private String empDepartment;
   private String designation;
   private String empSalary;
   private String empPassword;
   private String empConfirmPassword;
   private String empAddress;
   
   
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
   public String getEmpEmail() {
	return empEmail;
   }
   public void setEmpEmail(String empEmail) {
	this.empEmail = empEmail;
   }
   public String getEmpMobile() {
	return empMobile;
   }
   public void setEmpMobile(String empMobile) {
	this.empMobile = empMobile;
   }
   public String getEmpDob() {
	return empDob;
   }
   public void setEmpDob(String empDob) {
	this.empDob = empDob;
   }
   public String getEmpGender() {
	return empGender;
   }
   public void setEmpGender(String empGender) {
	this.empGender = empGender;
   }
   public String getEmpDepartment() {
	return empDepartment;
   }
   public void setEmpDepartment(String empDepartment) {
	this.empDepartment = empDepartment;
   }
   public String getDesignation() {
	return designation;
   }
   public void setDesignation(String designation) {
	this.designation = designation;
   }
   public String getEmpSalary() {
	return empSalary;
   }
   public void setEmpSalary(String empSalary) {
	this.empSalary = empSalary;
   }
   public String getEmpPassword() {
	return empPassword;
   }
   public void setEmpPassword(String empPassword) {
	this.empPassword = empPassword;
   }
   public String getEmpConfirmPassword() {
	return empConfirmPassword;
   }
   public void setEmpConfirmPassword(String empConfirmPassword) {
	this.empConfirmPassword = empConfirmPassword;
   }
   public String getEmpAddress() {
	return empAddress;
   }
   public void setEmpAddress(String empAddress) {
	this.empAddress = empAddress;
   }
   @Override
   public String toString() {
	return "Employee [empId=" + empId + ", empName=" + empName + ", empEmail=" + empEmail + ", empMobile=" + empMobile
			+ ", empDob=" + empDob + ", empGender=" + empGender + ", empDepartment=" + empDepartment + ", designation="
			+ designation + ", empSalary=" + empSalary + ", empPassword=" + empPassword + ", empConfirmPassword="
			+ empConfirmPassword + ", empAddress=" + empAddress + "]";
   }
     
}
