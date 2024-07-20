package com.klef.jfsd.springboot.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {
	
	@Query("SELECT b FROM Book b WHERE b.genre = ?1")
    List<Book> findByGenre(String genre);

}
