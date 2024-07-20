package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.UserBooks;

public interface UserBooksService {
	
	public String BookingofBooks(UserBooks userbooks);
	
	public String DeleteOrder(int id);

}
