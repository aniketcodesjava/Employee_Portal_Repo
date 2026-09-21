package com.aniket.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Project 
{
	@Id
  private String Pid;
  private String Pname;
  private String TeamLeader;
  private String TeamMembers;
  private String Technology;
  private String StartDate;
  private String EndDate;
  private String Duration;
  public String getPid() {
	return Pid;
  }
  public void setPid(String pid) {
	Pid = pid;
  }
  public String getPname() {
	return Pname;
  }
  public void setPname(String pname) {
	Pname = pname;
  }
  public String getTeamLeader() {
	return TeamLeader;
  }
  public void setTeamLeader(String teamLeader) {
	TeamLeader = teamLeader;
  }
  public String getTeamMembers() {
	return TeamMembers;
  }
  public void setTeamMembers(String teamMembers) {
	TeamMembers = teamMembers;
  }
  public String getTechnology() {
	return Technology;
  }
  public void setTechnology(String technology) {
	Technology = technology;
  }
  public String getStartDate() {
	return StartDate;
  }
  public void setStartDate(String startDate) {
	StartDate = startDate;
  }
  public String getEndDate() {
	return EndDate;
  }
  public void setEndDate(String endDate) {
	EndDate = endDate;
  }
  public String getDuration() {
	return Duration;
  }
  public void setDuration(String duration) {
	Duration = duration;
  }
  @Override
  public String toString() {
	return "Project [Pid=" + Pid + ", Pname=" + Pname + ", TeamLeader=" + TeamLeader + ", TeamMembers=" + TeamMembers
			+ ", Technology=" + Technology + ", StartDate=" + StartDate + ", EndDate=" + EndDate + ", Duration="
			+ Duration + "]";
  }
  
  
  
}
