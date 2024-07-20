package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.model.UserBooks;

import java.util.*;

public interface UserService {
	
	public String userreg(User user);
	public User userlogin(String username,String password);
	public User profile(int id);
	
	public List<UserBooks> getuserbooksbyid(int userid);
	

}
