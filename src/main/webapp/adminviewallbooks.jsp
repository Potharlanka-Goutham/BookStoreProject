<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
      <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>@import url("https://fonts.googleapis.com/css2?family=Inconsolata&display=swap");
<style type="text/css">

/* Ensure the button fills the container properly */
.card-button {
    text-align: center; /* Center the button horizontally */
    margin-top: 10px; /* Add some space above the button */
}

/* Style the form to ensure it doesn't interfere with layout */
.card-button form {
    display: inline-block; /* Keep the form from stretching the entire width */
    margin: 0; /* Remove default margin */
}

/* Additional styling for the button if needed */
.card-button .btn {
    padding: 10px 20px; /* Add some padding for a larger clickable area */
    font-size: 16px; /* Adjust the font size */
    background-color: #007bff; /* Bootstrap primary color */
    border-color: #007bff; /* Bootstrap primary border color */
    color: white; /* White text color */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    text-transform: uppercase; /* Uppercase text */
    font-weight: bold; /* Bold text */
    transition: background-color 0.3s ease; /* Smooth transition for background color */
}

/* Button hover effect */
.card-button .btn:hover {
    background-color: #0056b3; /* Darker shade on hover */
    border-color: #004085; /* Darker border color on hover */
}


.sidebar {
  height: 100%;
  width: 200px;
  position: fixed;
  top: 0;
  left: 0;
  background-color: #16213E;
  padding-top: 20px;
}

.sidebar a {
  padding: 15px 8px 15px 16px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  display: block;
}

.sidebar a:hover {
  background-color: #E94560;
}

/* Navbar styles */
.navbar {
  overflow: hidden;
  background-color: #16213E;
  margin-left: 200px; /* Adjust for sidebar */
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #E94560;
  color: black;
}

/* Search bar styling */
.navbar .search-bar {
  float: left;
  margin-left: 10px;
}

.navbar .search-bar input[type="text"] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.navbar .search-bar button {
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.navbar .search-bar button:hover {
  background: #ccc;
}

/* Content styles */
.content-wrapper {
  margin-left: 220px; /* Adjust for sidebar and navbar */
  padding: 20px;
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
}

/* Card styles */
.card {
  overflow: visible;
  width: 190px;
  height: 340px; /* Adjusted height to accommodate stars and button */
  margin: 20px;
  flex: 0 0 calc(25% - 40px); /* Adjust the percentage to fit 4 cards per row */
}

.content {
  width: 100%;
  height: 100%;
  transform-style: preserve-3d;
  transition: transform 300ms;
  box-shadow: 0px 0px 10px 1px #000000ee;
  border-radius: 5px;
}

.front, .back {
  background-color: #151515;
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
  -webkit-backface-visibility: hidden;
  border-radius: 5px;
  overflow: hidden;
}

.back {
  width: 100%;
  height: 100%;
  justify-content: center;
  display: flex;
  align-items: center;
  overflow: hidden;
}

.back::before {
  position: absolute;
  content: ' ';
  display: block;
  width: 160px;
  height: 160%;
  background: linear-gradient(90deg, transparent, #E94560, #E94560, #E94560, #E94560, transparent);
  animation: rotation_481 5000ms infinite linear;
}

.back-content {
  position: absolute;
  width: 99%;
  height: 99%;
  background-color: #151515;
  border-radius: 5px;
  color: white;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 30px;
}

.card:hover .content {
  transform: rotateY(180deg);
}

@keyframes rotation_481 {
  0% {
    transform: rotateZ(0deg);
  }

  100% {
    transform: rotateZ(360deg);
  }
}

.front {
  transform: rotateY(180deg);
  color: white;
}

.front .front-content {
  position: absolute;
  width: 100%;
  height: 100%;
  padding: 10px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.front-content .badge {
  background-color: #00000055;
  padding: 2px 10px;
  border-radius: 10px;
  backdrop-filter: blur(2px);
  width: fit-content;
}

.description {
  box-shadow: 0px 0px 10px 5px #00000088;
  width: 100%;
  padding: 10px;
  background-color: #00000099;
  backdrop-filter: blur(5px);
  border-radius: 5px;
}

.title {
  font-size: 11px;
  max-width: 100%;
  display: flex;
  justify-content: space-between;
}

.title p {
  width: 50%;
}

.card-footer {
  color: #ffffff88;
  margin-top: 5px;
  font-size: 8px;
}

.front .img {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center;
}

.circle {
  width: 90px;
  height: 90px;
  border-radius: 50%;
  background-color: #ffbb66;
  position: relative;
  filter: blur(15px);
  animation: floating 2600ms infinite linear;
}

#bottom {
  background-color: #ff8866;
  left: 50px;
  top: 0px;
  width: 150px;
  height: 150px;
  animation-delay: -800ms;
}

#right {
  background-color: #ff2233;
  left: 160px;
  top: -80px;
  width: 30px;
  height: 30px;
  animation-delay: -1800ms;
}

@keyframes floating {
  0% {
    transform: translateY(0px);
  }

  50% {
    transform: translateY(10px);
  }

  100% {
    transform: translateY(0px);
  }
}

.rating {
  color: #ffc107; /* Star color */
}

.card-button {
  margin-top: 10px;
}

.card-button button {
  width: 100%;
}
</style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
<a href="<c:url value="/viewallbooks"></c:url>">Categories</a>
  <a href="<c:url value="viewbookbygenre?genre=ScienceFiction"></c:url>">Science Fiction</a>
  <a href="<c:url value="viewbookbygenre?genre=Adventure"></c:url>">Adventure</a>
  <a href="<c:url value="viewbookbygenre?genre=Horror"></c:url>">Horror</a>
  <a href="<c:url value="viewbookbygenre?genre=Mythology"></c:url>">Mythology</a>
</div>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark  navbar-color fixed-top mb-3">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar" aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-left" id="mainNavbar">
            <ul class="navbar-nav mx-auto">
                
            </ul>
            <form class="form-inline my-2 my-lg-0 d-none d-lg-flex">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
            </form>
            <ul class="navbar-nav d-none d-lg-flex">
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-user"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i></a>
                </li>
            </ul>
        </div>
    </nav>
    
    <br>
    <br>
    

<div class="content-wrapper">
<c:forEach items="${books}" var="book" varStatus="bookStatus">
    <div class="card">
      <div class="content">
        <div class="back">
          <div class="back-content">
            <img src="displaycoverpage?id=${book.id}" alt="Card Back Image" style="width: 200px; height: 300px;">
          </div>
        </div>
        <div class="front">
  <div class="img">
    <img src="displaycoverpage?id=${book.id}" alt="Book Cover Image" class="img-fluid blur-img">
    <div class="circle"></div>
    <div class="circle" id="right"></div>
    <div class="circle" id="bottom"></div>
  </div>
          <div class="front-content">
            <small class="badge">${book.genre}</small>
            <div class="description">
              <div class="title">
                <p class="title">
                  <strong>${book.title}</strong>
                </p>
                <div class="rating">
                                <c:forEach begin="1" end="${book.rating}">
                                    <span>&#9733;</span>
                                </c:forEach>
                                <c:forEach begin="${book.rating + 1}" end="5">
                                    <span>&#9734;</span>
                                </c:forEach>
                            </div>
              </div>
              <p class="card-footer">
                Author &nbsp; | &nbsp; ${book.author}
              </p>
              <!-- Button -->
              <div class="card-button">
    <form action="<c:url value='deletebyid'></c:url>" method="get">
        <input type="hidden" name="id" value="${book.id}" />
        <button type="submit" class="btn btn-primary">Delete</button>
    </form>
</div>

            </div>
          </div>
        </div>
      </div>
    </div>
</c:forEach>
</div>

</body>
</html>
