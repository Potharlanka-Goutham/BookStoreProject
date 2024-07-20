package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.UserBooks;
import com.klef.jfsd.springboot.repository.UserBooksRepository;

@Service
public class UserBooksServiceImpl implements UserBooksService{
	
	@Autowired
	public UserBooksRepository userBooksRepository;

	@Override
	public String BookingofBooks(UserBooks userbooks) 
	{
		
	       userBooksRepository.save(userbooks) ;
	
	       return "Added to your cart!!!!";
	}

	@Override
	public String DeleteOrder(int id) {
		
		UserBooks ub = userBooksRepository.findById(id).get();
		userBooksRepository.delete(ub);
		return "SuccesFully Deleted";
	}

}
