package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Book;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.model.UserBooks;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BookService;
import com.klef.jfsd.springboot.service.UserBooksService;
import com.klef.jfsd.springboot.service.UserService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	
	@Autowired
	public UserService userService;
	
	@Autowired
	public BookService bookService;
	
	@Autowired
    private HttpSession httpSession;
	
	@Autowired
	public UserBooksService userBooksService;
	
	@Autowired
	public AdminService adminService;
	
	@GetMapping("/")
	public ModelAndView index() 
	{
		ModelAndView mv = new ModelAndView();
		List<Book> books = bookService.viewallbooks();
		List<Book> topseller = bookService.topsellers();
		List<Book> toprated = bookService.toprated();
		mv.setViewName("Finalindex");
		mv.addObject("toprated", toprated);
		mv.addObject("topseller", topseller);
		mv.addObject("books", books);
		return mv;
	}
	
	@GetMapping("/login")
	public ModelAndView loginpage() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");
		return mv;
		
	}
	
	@GetMapping("/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("UserSignup");
		return mv;
	}
	
	@PostMapping("/userRegister")
	public ModelAndView userregister(HttpServletRequest request) {
		
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try {
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String mobilenumber = request.getParameter("mobilenumber");
		
		User user = new User();
		
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setMobilenumber(mobilenumber);
		
		msg  = userService.userreg(user);
		
		mv.setViewName("userlogin");
		mv.addObject("msg", msg);
		
		}catch (Exception e) {
			
			msg = e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
			
		}
		return mv;
	}
		
	@PostMapping("/checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    User u = userService.userlogin(username, password);
	    
	    HttpSession session = request.getSession();
	    
	    if(u!=null) 
	    {
	    	session.setAttribute("uid", u.getId());
	    	mv.setViewName("userhome");
	    	mv.addObject("user", u);
	    	
	    }else {
	    	mv.setViewName("userlogin");
	    }
		return mv;
	}
	
	@GetMapping("/addbooks")
	public ModelAndView addbooks() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Addbooks");
		return mv;
	}
		
	@PostMapping("/addbook")
	public ModelAndView addbook(HttpServletRequest request,@RequestParam("coverpage") MultipartFile file) throws IOException, SerialException, SQLException {
	    ModelAndView mv = new ModelAndView();
	    String msg = null;

	    try {
	        String title = request.getParameter("title");
	        String author = request.getParameter("author");
	        String isbn = request.getParameter("isbn");
	        String publisher = request.getParameter("publisher");
	        String genre = request.getParameter("genre");
	        String language = request.getParameter("language");
	        String description = request.getParameter("description");
	        
	        byte[] bytes = file.getBytes();
			Blob coverpage = new javax.sql.rowset.serial.SerialBlob(bytes);

	        
	        int numberOfPages = 0;
	        double price = 0.0;
	        double rating = 0.0;
	        int stockQuantity = 0;

	        
	        try {
	            numberOfPages = Integer.parseInt(request.getParameter("numberOfPages"));
	            price = Double.parseDouble(request.getParameter("price"));
	            rating = Double.parseDouble(request.getParameter("rating"));
	            stockQuantity = Integer.parseInt(request.getParameter("stockQuantity"));
	        } catch (NumberFormatException e) {
	            msg = "Invalid number format in one of the fields.";
	            mv.addObject("msg", msg);
	            mv.setViewName("Addbooks");
	            return mv;
	        }

	        Book b = new Book();
	        b.setTitle(title);
	        b.setAuthor(author);
	        b.setIsbn(isbn);
	        b.setPublisher(publisher);
	        b.setGenre(genre);
	        b.setLanguage(language);
	        b.setNumberOfPages(numberOfPages);
	        b.setPrice(price);
	        b.setDescription(description);
	        b.setRating(rating);
	        b.setStockQuantity(stockQuantity);
	        b.setCoverpage(coverpage);

	        msg = bookService.addbook(b);

	        mv.setViewName("ListofBooks");
	        List<Book> books = bookService.viewallbooks();
	        mv.addObject("books", books);
	        mv.addObject("msg", msg);

	    } catch (Exception e) {
	        msg = e.getMessage();
	        mv.addObject("msg", msg);
	        mv.setViewName("index");
	    }
	    return mv;
	}
	
	@GetMapping("displaycoverpage")
	public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Book book = bookService.viewbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = book.getCoverpage().getBytes(1,(int) book.getCoverpage().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	
	
	@GetMapping("/viewprofile")
	public ModelAndView viewprofile(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		
		User user = userService.profile((int)session.getAttribute("uid"));
		
		mv.addObject("user", user);
		mv.setViewName("userprofile");
		
		return mv;
	}
	
	@GetMapping("/addtomycart")
	public ModelAndView addtomycart(@RequestParam("id") int bookid,HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("uid");
        
        if(userId!=null) {
        	User user  = userService.profile(userId);
        	if(user!=null) 
        	{
        		Book book = bookService.viewbyid(bookid);
        		UserBooks userbooks = new UserBooks();
        		userbooks.setUser(user);
        		userbooks.setBook(book);
        		
        		String msg = userBooksService.BookingofBooks(userbooks);
        		mv.addObject("msg", msg);
        		mv.setViewName("Mycollection");
        		List<UserBooks> books = userService.getuserbooksbyid(userId);
        		mv.addObject("books", books);
        	}
        }
		
		return mv;
	}

	@GetMapping("/viewallbooks")
	public ModelAndView viewallbooks() {
		
		List<Book> books = bookService.viewallbooks();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ListofBooks");
		mv.addObject("books", books);
		
		return mv;
	}
	
	@GetMapping("/adminviewallbooks")
	public ModelAndView adminviewallbooks() {
		
		List<Book> books = bookService.viewallbooks();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminviewallbooks");
		mv.addObject("books", books);
		
		return mv;
	}
	
	@GetMapping("/viewbookbygenre")
	public ModelAndView viewbookbygenre(@RequestParam("genre") String genre,HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		List<Book> books = bookService.viewbygenre(genre);
		mv.setViewName("ListofBooks");
		mv.addObject("books", books);
		return mv;
	}
	
	@GetMapping("viewmycollection")
	public ModelAndView viewmycollection(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("uid");
		List<UserBooks> books = userService.getuserbooksbyid(userId);
		
		mv.setViewName("Mycollection");
		mv.addObject("books", books);
		
		return mv;
	}
	
	@GetMapping("deleteorder")
	public ModelAndView deleteorder(@RequestParam("id")int id,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = userBooksService.DeleteOrder(id);
		mv.setViewName("Mycollection");
		mv.addObject("msg", msg);
		HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("uid");
		List<UserBooks> books = userService.getuserbooksbyid(userId);
		mv.addObject("books", books);
		return mv;
	}
	
	@GetMapping("/viewbookbyid")
	public ModelAndView viewbookbyid(@RequestParam("id")int id) 
	{
		ModelAndView mv = new ModelAndView();
		Book book = bookService.viewbyid(id);
		List<Book> related = bookService.viewrelated(id);
		mv.setViewName("singlebook");
		mv.addObject("book", book);
		mv.addObject("related", related);
		return mv;
	}

	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    //User u = userService.userlogin(username, password);
	    Admin a = adminService.adminlogin(username, password);
	    
	    HttpSession session = request.getSession();
	    
	    if(a!=null) 
	    {
	    	session.setAttribute("aid", a.getId());
	    	mv.setViewName("adminhome");
	    	mv.addObject("admin",a);
	    	
	    }else {
	    	mv.setViewName("adminlogin");
	    }
		return mv;
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogin() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		
		return mv;
	}
	
	
}
