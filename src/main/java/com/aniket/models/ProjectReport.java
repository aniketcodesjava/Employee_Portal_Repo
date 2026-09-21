package com.aniket.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ProjectReport
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
   private int srno;
   private String projectId;
   private String projectName;
   private String reportType;
   private String subject;
   private String message;
   public int getSrno() {
	return srno;
   }
   public void setSrno(int srno) {
	this.srno = srno;
   }
   public String getProjectId() {
	return projectId;
   }
   public void setProjectId(String projectId) {
	this.projectId = projectId;
   }
   public String getProjectName() {
	return projectName;
   }
   public void setProjectName(String projectName) {
	this.projectName = projectName;
   }
   public String getReportType() {
	return reportType;
   }
   public void setReportType(String reportType) {
	this.reportType = reportType;
   }
   public String getSubject() {
	return subject;
   }
   public void setSubject(String subject) {
	this.subject = subject;
   }
   public String getMessage() {
	return message;
   }
   public void setMessage(String message) {
	this.message = message;
   }
   @Override
   public String toString() {
	return "ProjectReport [srno=" + srno + ", projectId=" + projectId + ", projectName=" + projectName + ", reportType="
			+ reportType + ", subject=" + subject + ", message=" + message + "]";
   }
   
   
   
   
   
}
