package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	
	@Query("Select u from User u where username=?1 and password=?2")
	public User login(String username,String password);

}
