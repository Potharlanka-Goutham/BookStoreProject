package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.model.UserBooks;
import com.klef.jfsd.springboot.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	public UserRepository userRepository;

	@Override
	public String userreg(User user) {
		userRepository.save(user);
		return "Registration successfull";
	}

	@Override
	public User userlogin(String username, String password) 
	{
		return userRepository.login(username, password);
	}

	@Override
	public User profile(int id) {
		User user = userRepository.findById(id).get();	
		return user;
	}

	@Override
	public List<UserBooks> getuserbooksbyid(int userid) {
		User user = userRepository.findById(userid).get();
		return user.getUserbookings();
	}

}
