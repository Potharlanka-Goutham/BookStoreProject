package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Book;


public interface BookService {

	public String addbook(Book book);
	public Book viewbyid(int id);
	
	public List<Book> viewallbooks();
	
	public List<Book> viewbygenre(String genre);
	
	public List<Book> topsellers();
	public List<Book> toprated();
	
	public List<Book> viewrelated(int id);
	
	public String deleteBook(int id);
	
}
