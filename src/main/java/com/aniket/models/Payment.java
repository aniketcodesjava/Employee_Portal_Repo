package com.aniket.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Payment
{
	// personal info
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
   private int id;
   private String empId;
   private String empName;
   private String empDept;
   private String joinDate;
   private String panNumber;
   private String aadharNumber;
   private String bankName;
   private String accNumber;
   // working info
   private int workDay;
   private int leaveDay;
   private int halfDay;
   // earning 
   private double basicSal;
   private double hra;
   private double transportAllow;
   private double specialAllow;
   private double mediAllow;
   private double otherAllow;
   // deduction
   private double pf;
   private double tax;
   private double tdx;
   private double advanceDeduction;
   // final
   private double grossSal;
   private double totalDeduction;
   private double netSalary;
   // salary month 
   private String month;
   private int year;
   private String payStatus;
   public int getId() {
	return id;
   }
   public void setId(int id) {
	this.id = id;
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
   public String getEmpDept() {
	return empDept;
   }
   public void setEmpDept(String empDept) {
	this.empDept = empDept;
   }
   public String getJoinDate() {
	return joinDate;
   }
   public void setJoinDate(String joinDate) {
	this.joinDate = joinDate;
   }
   public String getPanNumber() {
	return panNumber;
   }
   public void setPanNumber(String panNumber) {
	this.panNumber = panNumber;
   }
   public String getAadharNumber() {
	return aadharNumber;
   }
   public void setAadharNumber(String aadharNumber) {
	this.aadharNumber = aadharNumber;
   }
   public String getBankName() {
	return bankName;
   }
   public void setBankName(String bankName) {
	this.bankName = bankName;
   }
   public String getAccNumber() {
	return accNumber;
   }
   public void setAccNumber(String accNumber) {
	this.accNumber = accNumber;
   }
   public int getWorkDay() {
	return workDay;
   }
   public void setWorkDay(int workDay) {
	this.workDay = workDay;
   }
   public int getLeaveDay() {
	return leaveDay;
   }
   public void setLeaveDay(int leaveDay) {
	this.leaveDay = leaveDay;
   }
   public int getHalfDay() {
	return halfDay;
   }
   public void setHalfDay(int halfDay) {
	this.halfDay = halfDay;
   }
   public double getBasicSal() {
	return basicSal;
   }
   public void setBasicSal(double basicSal) {
	this.basicSal = basicSal;
   }
   public double getHra() {
	return hra;
   }
   public void setHra(double hra) {
	this.hra = hra;
   }
   public double getTransportAllow() {
	return transportAllow;
   }
   public void setTransportAllow(double transportAllow) {
	this.transportAllow = transportAllow;
   }
   public double getSpecialAllow() {
	return specialAllow;
   }
   public void setSpecialAllow(double specialAllow) {
	this.specialAllow = specialAllow;
   }
   public double getMediAllow() {
	return mediAllow;
   }
   public void setMediAllow(double mediAllow) {
	this.mediAllow = mediAllow;
   }
   public double getOtherAllow() {
	return otherAllow;
   }
   public void setOtherAllow(double otherAllow) {
	this.otherAllow = otherAllow;
   }
   public double getPf() {
	return pf;
   }
   public void setPf(double pf) {
	this.pf = pf;
   }
   public double getTax() {
	return tax;
   }
   public void setTax(double tax) {
	this.tax = tax;
   }
   public double getTdx() {
	return tdx;
   }
   public void setTdx(double tdx) {
	this.tdx = tdx;
   }
   public double getAdvanceDeduction() {
	return advanceDeduction;
   }
   public void setAdvanceDeduction(double advanceDeduction) {
	this.advanceDeduction = advanceDeduction;
   }
   public double getGrossSal() {
	return grossSal;
   }
   public void setGrossSal(double grossSal) {
	this.grossSal = grossSal;
   }
   public double getTotalDeduction() {
	return totalDeduction;
   }
   public void setTotalDeduction(double totalDeduction) {
	this.totalDeduction = totalDeduction;
   }
   public double getNetSalary() {
	return netSalary;
   }
   public void setNetSalary(double netSalary) {
	this.netSalary = netSalary;
   }
   public String getMonth() {
	return month;
   }
   public void setMonth(String month) {
	this.month = month;
   }
   public int getYear() {
	return year;
   }
   public void setYear(int year) {
	this.year = year;
   }
   public String getPayStatus() {
	return payStatus;
   }
   public void setPayStatus(String payStatus) {
	this.payStatus = payStatus;
   }
   @Override
   public String toString() {
	return "Payment [id=" + id + ", empId=" + empId + ", empName=" + empName + ", empDept=" + empDept + ", joinDate="
			+ joinDate + ", panNumber=" + panNumber + ", aadharNumber=" + aadharNumber + ", bankName=" + bankName
			+ ", accNumber=" + accNumber + ", workDay=" + workDay + ", leaveDay=" + leaveDay + ", halfDay=" + halfDay
			+ ", basicSal=" + basicSal + ", hra=" + hra + ", transportAllow=" + transportAllow + ", specialAllow="
			+ specialAllow + ", mediAllow=" + mediAllow + ", otherAllow=" + otherAllow + ", pf=" + pf + ", tax=" + tax
			+ ", tdx=" + tdx + ", advanceDeduction=" + advanceDeduction + ", grossSal=" + grossSal + ", totalDeduction="
			+ totalDeduction + ", netSalary=" + netSalary + ", month=" + month + ", year=" + year + ", payStatus="
			+ payStatus + "]";
   }
   
   
}
