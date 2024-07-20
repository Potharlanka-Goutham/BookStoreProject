<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Book Store</title>
  <link rel="stylesheet" href="styles.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  
  <style>
  * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  width: 100%;
  background: #0c111b;
  position: relative;
  font-family: roboto, sans-serif;
}

.navbar {
  width: 100%;
  height: 80px;
  position: fixed;
  top: 0;
  left: 0;
  padding: 0 4%;
  background: #0c111b;
  z-index: 9;
  display: flex;
  align-items: center;
}

.brand-logo {
  height: 60px;
}

.nav-links {
  margin-top: 10px;
  display: flex;
  list-style: none;
}

.nav-items a {
  text-decoration: none;
  margin-left: 20px;
  text-transform: capitalize;
  color: #fff;
  opacity: 0.9;
}

.right-container {
  display: block;
  margin-left: auto;
}

.search-box {
  border: none;
  border-bottom: 1px solid #aaa;
  background: transparent;
  outline: none;
  height: 30px;
  color: #fff;
  width: 250px;
  text-transform: capitalize;
  font-size: 16px;
  font-weight: 500;
  transition: 0.5s;
}

.search-box:focus {
  width: 400px;
  border-color: #1f80e0;
}

.sub-btn {
  background: #1f80e0;
  height: 30px;
  padding: 0 20px;
  color: #fff;
  border-radius: 5px;
  border: none;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
  font-size: 12px;
  margin: 0 10px;
}

.login-link {
  color: #fff;
  opacity: 0.9;
  text-transform: uppercase;
  font-size: 15px;
  font-weight: 700;
  text-decoration: none;
}

.carousel-container {
  position: relative;
  width: 100%;
  height: 450px;
  padding: 20px 0;
  overflow-x: hidden;
  margin-top: 80px;
}

.carousel {
  display: flex;
  width: 92%;
  height: 100%;
  position: relative;
  margin: auto;
}

.slider {
  flex: 0 0 auto;
  margin-right: 30px;
  position: relative;
  background: rgba(0, 0, 0, 0.5);
  border-radius: 5px;
  width: 100%;
  height: 100%;
  left: 0;
  transition: 1s;
  overflow: hidden;
}

.slider img {
  width: 70%;
  min-height: 100%;
  object-fit: cover;
  display: block;
  margin-left: auto;
}

.slide-content {
  position: absolute;
  width: 50%;
  height: 100%;
  z-index: 2;
  background: linear-gradient(to right, #030b17 80%, #0c111b00);
  color: #fff;
}

.movie-title {
  padding-left: 50px;
  text-transform: capitalize;
  margin-top: 80px;
}

.movie-des {
  width: 80%;
  line-height: 30px;
  padding-left: 50px;
  margin-top: 30px;
  opacity: 0.8;
}

.video-card-container {
  position: relative;
  width: 92%;
  margin: auto;
  height: 10vw;
  display: flex;
  margin-bottom: 20px;
  justify-content: space-between;
}

.video-card {
  position: relative;
  min-width: calc(100% / 5 - 10px);
  width: calc(100% / 5 - 10px);
  height: 100%;
  border-radius: 5px;
  overflow: hidden;
  background: #030b17;
}

.video-card-image,
.card-video {
  width: 90%;
  height: 90%;
  object-fit: cover;
}

.card-video {
  position: absolute;
}

.video-card:hover .video-card-image {
  display: none;
}

.title {
  color: #fff;
  opacity: 0.9;
  padding-left: 4%;
  text-transform: capitalize;
  font-size: 22px;
  font-weight: 500;
}

.movies-list {
  width: 100%;
  height: 220px;
  position: relative;
  margin: 10px 0 20px;
}

.card-container {
  position: relative;
  width: 92%;
  padding-left: 10px;
  height: 220px;
  display: flex;
  margin: 0 auto;
  align-items: center;
  overflow-x: auto;
  overflow-y: visible;
  scroll-behavior: smooth;
}

.card-container::-webkit-scrollbar {
  display: none;
}

.card {
  position: relative;
  min-width: 150px;
  width: 150px;
  height: 200px;
  border-radius: 5px;
  overflow: hidden;
  margin-right: 10px;
  transition: 0.5s;
}

.card-img {
  width: 70%;
  height: 90%;
  object-fit: cover ;
}

.card:hover {
  transform: scale(1.1);
}

.card:hover .card-body {
  opacity: 1;
}

.card-body {
  opacity: 0;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 2;
  background: linear-gradient(to bottom, rgba(4, 8, 15, 0), #192133 90%);
  padding: 10px;
  transition: 0.5s;
}

.name {
  color: #fff;
  font-size: 15px;
  font-weight: 500;
  text-transform: capitalize;
  margin-top: 60%;
}

.des {
  color: #fff;
  opacity: 0.8;
  margin: 5px 0;
  font-weight: 500;
  font-size: 12px;
}

.watchlist-btn {
  position: relative;
  width: 100%;
  text-transform: capitalize;
  background: none;
  border: none;
  font-weight: 500;
  text-align: right;
  color: rgba(255, 255, 255, 0.5);
  margin: 5px 0;
  cursor: pointer;
  padding: 10px 5px;
  border-radius: 5px;
}

.watchlist-btn::before {
  content: "";
  position: absolute;
  top: 0;
  left: -5px;
  height: 35px;
  width: 35px;
  background-image: url(images/add.png);
  background-size: cover;
  transform: scale(0.4);
}

.watchlist-btn:hover {
  color: #fff;
  background: rgba(255, 255, 255, 0.1);
}

.pre-btn,
.nxt-btn {
  position: absolute;
  top: 0;
  width: 5%;
  height: 100%;
  z-index: 2;
  border: none;
  cursor: pointer;
  outline: none;
}

.pre-btn {
  left: 0;
  background: linear-gradient(to right, #0c111b 0%, #0c111b00);
}

.nxt-btn {
  right: 0;
  background: linear-gradient(to left, #0c111b 0%, #0c111b00);
}

.pre-btn img,
.nxt-btn img {
  width: 15px;
  height: 20px;
  opacity: 0;
}

.pre-btn:hover img,
.nxt-btn:hover img {
  opacity: 1;
}
  
  </style>
  
</head>

<body>
  <nav class="navbar">
    <img src="images/imagesss.png" class="brand-logo" alt="" />
    <ul class="nav-links">
      <li class="nav-items"><a href="#">Home</a></li>
      <li class="nav-items"><a href="#">Books</a></li>
      <li class="nav-items"><a href="#">Reviews</a></li>
      <li class="nav-items"><a href="#">Authors</a></li>
    </ul>

    <div class="right-container">
      <input type="text" class="search-box" placeholder="search" />
      <button class="sub-btn">subscribe</button>
      <a href="#" class="login-link">login</a>
    </div>
  </nav>

  <div class="carousel-container">
    <div class="carousel">
      <div class="slider">
                <div class="slide-content">
                    <h1 class="movie-title">loki</h1>
                    <p class="movie-des">Lorem ipsum dolor sit,amet consectetur
                    adipisicing elit.Suscipit saepe eius ratione nostrum mollitia
                    explicabo quae nam pariatur.Sint,odit?</p>
                </div>
                <img src="images/slider 1.png" alt="">
            </div>
    </div>
  </div>
  <div class="video-card-container">
    <a href="<c:url value="viewbookbygenre?genre=ScienceFiction"></c:url>" class="video-card">
        <img src="images/adventure.png" class="video-card-image" alt="" />
        <video src="videos/disney.mp4" muted loop class="card-video"></video>
    </a>
    <a href="<c:url value="viewbookbygenre?genre=Adventure"></c:url>" class="video-card">
        <img src="images/adventure.png" class="video-card-image" alt="" />
        <video src="videos/pixar.mp4" muted loop class="card-video"></video>
    </a>
    <a href="<c:url value="viewbookbygenre?genre=Horror"></c:url>" class="video-card">
        <img src="images/marvel.png" class="video-card-image" alt="" />
        <video src="videos/marvel.mp4" muted loop class="card-video"></video>
    </a>
    <a href="<c:url value="viewbookbygenre?genre=Mythology"></c:url>" class="video-card">
        <img src="images/star-wars.png" class="video-card-image" alt="" />
        <video src="videos/star-war.mp4" muted loop class="card-video"></video>
    </a>
    <a href="geographic.html" class="video-card">
        <img src="images/geographic.png" class="video-card-image" alt="" />
        <video src="videos/geographic.mp4" muted loop class="card-video"></video>
    </a>
</div>

  <h1 class="title">Top selling books</h1>
  <div class="movies-list">
    <button class="pre-btn" title="btn">
      <img src="images/pre.png" alt="" />
    </button>
    <button class="nxt-btn" title="btn">
      <img src="images/nxt.png" alt="" />
    </button>
    <div class="card-container">
    <c:forEach items="${toprated}" var="book" varStatus="bookStatus">
      <div class="card">
        <img src="displaycoverpage?id=${book.id}" class="card-img" alt="" />
        <div class="card-body">
          <h2 class="name">${book.title}</h2>
          <h6 class="des">${book.description}</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
      </div>
      </c:forEach>
    </div>
  </div>
  <h1 class="title">Drama</h1>
  <div class="movies-list">
    <button class="pre-btn" title="btn"><img src="images/pre.png" alt=""></button>
    <button class="nxt-btn" title="btn"><img src="images/nxt.png" alt=""></button>
    <div class="card-container">
      <div class="card">
        <img src="images/poster 12.png" class="card-img" alt="">
        <div class="card-body">
          <h2 class="name">movie name</h2>
          <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
      </div>
      <div class="card">
        <img src="images/poster 5.png" class="card-img" alt="">
        <div class="card-body">
          <h2 class="name">movie name</h2>
          <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
    </div>
  </div>
  <h1 class="title">Adventure</h1>
  <div class="movies-list">
    <button class="pre-btn" title="btn"><img src="images/pre.png" alt=""></button>
    <button class="nxt-btn" title="btn"><img src="images/nxt.png" alt=""></button>
    <div class="card-container">
      <div class="card">
        <img src="images/poster 12.png" class="card-img" alt="">
        <div class="card-body">
          <h2 class="name">movie name</h2>
          <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
      </div>
      <div class="card">
        <img src="images/poster 5.png" class="card-img" alt="">
        <div class="card-body">
          <h2 class="name">movie name</h2>
          <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
    </div>
  </div>
  <h1 class="title">Horror</h1>
  <div class="movies-list">
    <button class="pre-btn" title="btn"><img src="images/pre.png" alt=""></button>
    <button class="nxt-btn" title="btn"><img src="images/nxt.png" alt=""></button>
    <div class="card-container">
      <div class="card">
        <img src="images/poster 12.png" class="card-img" alt="">
        <div class="card-body">
          <h2 class="name">movie name</h2>
          <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
      </div>
      <div class="card">
        <img src="images/poster 5.png" class="card-img" alt="">
        <div class="card-body">
          <h2 class="name">movie name</h2>
          <h6 class="des">Lorem ipsum dolor sit amet consectetur.</h6>
          <button class="watchlist-btn">Add to card</button>
        </div>
    </div>
  </div>
  
</body>
</html>