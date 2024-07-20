<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Store</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style type="text/css">
    body{
    background-color: black;
    
}
.navbar-main{
  padding-top: 2px;
  padding-bottom: 10px;
}

.jumbotron {
    background: url('https://images.unsplash.com/photo-1512820790803-83ca734da794') no-repeat center center;
    background-size: cover;
    color: white;
}
.book-cover {
    width: 100%;
    height: auto;
}
.navbar-brand {
    font-size: 2em;
    font-weight: bold;
}
.navbar a:hover {
  background-color: #E94560;
  color: black;
}
.carousel-caption {
    background: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 15px;
}
.carousel-item {
    height: 600px; /* Set the height of the carousel items */
}

.carousel-item img {
    object-fit: contain; /* Ensure the image covers the entire area while maintaining aspect ratio */
    height: 100%; /* Set the image height to 100% of the carousel item height */
    width: 300%; /* Ensure the image covers the full width of the carousel item */
}

.title{
    font-size: 2em;
    text-align: center;
    color: white;
    margin-top: 10px;
    margin-bottom: 10px;
}
.navbar-pink {
    background-color: #16213E /* Pink color */
}

.button{
    border-radius: 8px;
    height: 35px;
    width: fit-content;
    margin-top: 3px;
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
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  
  .card:hover {
    transform: scale(1.1);
  }
  
  .card:hover .card-body {
    opacity: 1;
  }
  
  .card-body {
    opacity: 0;
    width: 200%;
    height: 200%;
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

footer {
    background-color: #16213E; /* Dark background */
    color: white; /* White text */
}
footer a {
    color: white; /* White text for links */
    text-decoration: none; /* No underline for links */
}
footer a:hover {
    text-decoration: underline; /* Underline on hover */
}</style>
</head>
<body>
    <!-- Main Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-pink fixed-top mb-3">
        <a class="navbar-brand name-logo" href="/">BookStore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar" aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="mainNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-white" href="/">Home</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link text-white" href="/viewallbooks">View Books</a>
                </li>
               
            </ul>
        </div>
        <form class="form-inline">
            <input class="form-control mr-sm-2 search-bar" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light my-2 my-sm-0 lens-btn" type="submit"><i class="fas fa-search"></i></button>
        </form>
        <ul class="navbar-nav">
            <c:choose>
                    <c:when test="${not empty sessionScope.uid}">
                        <li class="nav-item">
                            <a class="nav-link" href="/viewprofile"><i class="fas fa-user"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/viewmycollection"><i class="fas fa-shopping-cart"></i></a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/login"><i class="fas fa-user"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/login"><i class="fas fa-shopping-cart"></i></a>
                        </li>
                    </c:otherwise>
                </c:choose>
        </ul>
    </nav>
    <br>
    <br>
    <br>

    <!-- Carousel -->
<div id="bookCarousel" class="carousel slide" data-ride="carousel">
    <c:set var="index" value="0" />
    <ol class="carousel-indicators">
        <c:forEach var="book" items="${books}">
            <li data-target="#bookCarousel" data-slide-to="${index}" class="${index == 0 ? 'active' : ''}"></li>
            <c:set var="index" value="${index + 1}" />
        </c:forEach>
    </ol>
    <div class="carousel-inner">
        <c:set var="index" value="0" />
        <c:forEach var="book" items="${books}">
            <div class="carousel-item ${index == 0 ? 'active' : ''}">
                <img src="displaycoverpage?id=${book.id}" class="carousel-img d-block w-100 carousel-image" alt="Slide ${index + 1}">
                <div class="carousel-caption d-none d-md-block">
                    <h5>${book.title}</h5>
                    <p>${book.description}</p>
                </div>
            </div>
            <c:set var="index" value="${index + 1}" />
        </c:forEach>
    </div>
    <a class="carousel-control-prev" href="#bookCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#bookCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

    <!-- Book Categories Section -->
    <h1 class="title">Recommended For You</h1>
    <div class="movies-list">
        <button class="pre-btn" title="btn">
            <img src="images/pre.png" alt="" />
        </button>
        <button class="nxt-btn" title="btn">
            <img src="images/nxt.png" alt="" />
        </button>
        <div class="card-container">
    <c:forEach items="${books}" var="book">
        <div class="card" onclick="location.href='viewbookbyid?id=${book.id}'" style="cursor: pointer;">
            <img src="displaycoverpage?id=${book.id}" class="card-img" alt="" />
            <div class="card-body">
                <h2 class="name">${book.title}</h2>
                <h6 class="des">${book.description}</h6>
            </div>
        </div>
    </c:forEach>
</div>
</div>
    <!-- Footer -->
    <footer class=" text-white text-center py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-3">
                    <h5>About Us</h5>
                    <p>Welcome to BookStore, your one-stop shop for books of all genres and categories. We are passionate about books and aim to provide a great selection for all readers.</p>
                </div>
                <div class="col-md-4 mb-3">
                    <h5>Follow Us</h5>
                    <a href="#" class="text-white mx-2"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="text-white mx-2"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-white mx-2"><i class="fab fa-twitter"></i></a>
                </div>
                <div class="col-md-4 mb-3">
                    <h5>Contact Us</h5>
                    <p>Email: info@bookstore.com</p>
                    <p>Phone: +123 456 7890</p>
                    <p>Address: 123 Book St, Bibliopolis, BK 56789</p>
                </div>
            </div>
            <p class="mb-0">&copy; 2024 BookStore. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Custom JS -->
    <script>
    let cardContainers = [...document.querySelectorAll(".card-container")];
    let preBtns = [...document.querySelectorAll(".pre-btn")];
    let nxtBtns = [...document.querySelectorAll(".nxt-btn")];

    cardContainers.forEach((item, i) => {
      let containerDimensions = item.getBoundingClientRect();
      let containerWidth = containerDimensions.width;

      nxtBtns[i].addEventListener("click", () => {
        item.scrollLeft += containerWidth - 200;
      });

      preBtns[i].addEventListener("click", () => {
        item.scrollLeft -= containerWidth + 200;
      });
    });
</script>
</body>
</html>
