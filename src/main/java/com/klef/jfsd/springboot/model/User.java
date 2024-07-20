package com.klef.jfsd.springboot.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "user")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Column(nullable = false)
	String firstname;
	@Column(nullable = false)
	String lastname;
	@Column(unique = true, nullable = false)
	String username;
	@Column(nullable = false)
	String password;
	@Column(unique = true,nullable = false)
	String email;
	@Column(unique = true,nullable = false)
	String mobilenumber;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<UserBooks> userbookings;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public List<UserBooks> getUserbookings() {
		return userbookings;
	}
	public void setUserbookings(List<UserBooks> userbookings) {
		this.userbookings = userbookings;
	}
	
}
