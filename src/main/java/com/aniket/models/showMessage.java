package com.aniket.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class showMessage
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
  private int mid;
  private String name;
  private String message;
  
 
  public showMessage(String name, String message) {
	super();
	this.name = name;
	this.message = message;
}
  
  

  public showMessage() {
	super();
	// TODO Auto-generated constructor stub
}



  public int getMid() {
	return mid;
  }

  public String getName() {
	return name;
  }
  public void setName(String name) {
	this.name = name;
  }
  public String getMessage() {
	return message;
  }
  public void setMessage(String message) {
	this.message = message;
  }
  @Override
  public String toString() {
	return "showMessage [ name=" + name + ", message=" + message + "]";
  }
  
  
}
