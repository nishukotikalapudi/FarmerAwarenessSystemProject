package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="farmer_table")
public class Farmer 
{
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY) // you can take this manually also through form
   @Column(name="farmer_id")
   private int id;
   @Column(name="farmer_name",nullable=false,length = 50)
   private String name;
   @Column(name="farmer_gender",nullable=false,length = 20)
   private String gender;
   @Column(name="farmer_dob",nullable=false,length = 20)
   private String dateofbirth;
   @Column(name="farmer_category",nullable=false,length = 50)
   private String category;
   @Column(name="farmer_income",nullable=false)
   private double income;
   @Column(name="farmer_email",nullable=false,unique = true,length = 50)
   private String email;
   @Column(name="farmer_password",nullable=false,length = 50)
   private String password;
   @Column(name="farmer_location",nullable=false,length=50)
   private String location;
   @Column(name="farmer_contact",nullable=false,unique = true,length = 20)
   private String contact;
   @Column(name="emp_status",nullable=false,length = 50)
   private String status;
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }
  public String getDateofbirth() {
    return dateofbirth;
  }
  public void setDateofbirth(String dateofbirth) {
    this.dateofbirth = dateofbirth;
  }
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }
  public double getIncome() {
    return income;
  }
  public void setIncome(double income) {
    this.income = income;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public String getLocation() {
    return location;
  }
  public void setLocation(String location) {
    this.location = location;
  }
  public String getContact() {
    return contact;
  }
  public void setContact(String contact) {
    this.contact = contact;
  }
  public String getStatus() {
    return status;
  }
  public void setStatus(String status) {
    this.status = status;
  }

}