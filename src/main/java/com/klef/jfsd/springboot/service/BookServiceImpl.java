package com.klef.jfsd.springboot.service;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Book;

import com.klef.jfsd.springboot.repository.BookRepository;


@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	public BookRepository bookRepository;
	
	

	@Override
	public String addbook(Book book) {
	    bookRepository.save(book);
	    return "success!";
	}

	@Override
	public Book viewbyid(int id) 
	{
		return bookRepository.findById(id).get();
	}

	@Override
	public List<Book> viewallbooks() {
		
		return bookRepository.findAll();
	}

	@Override
	public List<Book> viewbygenre(String genre) {
		
		return bookRepository.findByGenre(genre);
	}

	@Override
	public List<Book> topsellers() {
		List<Book> books = bookRepository.findAll();
		List<Book> topseller = new ArrayList<Book>();
		for (Book book : books) {
		    if (book.getStockQuantity() < 100) {
		        topseller.add(book);
		    }
		}
		return topseller;
	}

	@Override
	public List<Book> toprated() {
		List<Book> books = bookRepository.findAll();
		List<Book> toprated = new ArrayList<Book>();
		for (Book book : books) {
		    if (book.getRating()>=4) {
		        toprated.add(book);
		    }
		}
		return toprated;
	}

	@Override
	public List<Book> viewrelated(int id) {
	    Book b = bookRepository.findById(id).orElse(null);
	    if (b == null) {
	        return new ArrayList<>();
	    }

	    List<Book> books = bookRepository.findAll();
	    List<Book> related = new ArrayList<>();
	    String genre = b.getGenre();
	    int count = 0;

	    for (Book book : books) {
	        if (book.getGenre().equals(genre) && book.getId() != id) {  // Exclude the same book
	            related.add(book);
	            count++;
	        }
	        if (count >= 4) {
	            break;
	        }
	    }
	    return related;
	}

	@Override
	public String deleteBook(int id) {
		Book b = bookRepository.findById(id).orElse(null);
		bookRepository.delete(b);
		return "Deleted Successfully";
	}

	


}
