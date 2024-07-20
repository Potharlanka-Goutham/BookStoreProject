<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Inconsolata&display=swap");
        body {
            background-color: #f8f9fa;
        }
        .logo {
            font-weight: bold;
            font-family: "poppins", sans-serif;
        }
        .navbar .navbar-nav .nav-link {
            color: white !important;
        }
        .navbar-color {
            background-color: #16213E !important;
        }
        .img-fluid {
            height: 280px;
            width: 240px;
        }
        .card {
            box-sizing: border-box;
            width: 190px;
            height: 254px;
            background: rgba(217, 217, 217, 0.58);
            border: 1px solid white;
            box-shadow: 12px 17px 51px rgba(0, 0, 0, 0.22);
            backdrop-filter: blur(6px);
            border-radius: 17px;
            text-align: center;
            cursor: pointer;
            transition: all 0.5s;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            user-select: none;
            font-weight: bolder;
            color: black;
        }
        .card:hover {
            border: 1px solid black;
            transform: scale(1.05);
        }
        .card:active {
            transform: scale(0.95) rotateZ(1.7deg);
        }
        .card img {
            width: 100%;
            height: auto;
            border-radius: 15px;
        }
        .card span {
            margin-top: 10px;
        }
        .card-body {
            position: absolute;
            bottom: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 10px;
            display: none;
            transition: all 0.3s ease-in-out;
        }
        .card:hover .card-body {
            display: block;
        }
        .checked {
            color: orange;
        }
        .navbar a:hover {
            background-color: #E94560;
            color: black;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark navbar-color fixed-top mb-3">
        <a class="navbar-brand logo ml-3" href="/">BookStore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar" aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="mainNavbar">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="/">Home</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link text-white" href="/viewallbooks">Books</a>
                </li>
                
            </ul>
            <form class="form-inline my-2 my-lg-0 d-none d-lg-flex">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
            </form>
            <ul class="navbar-nav d-none d-lg-flex">
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
        </div>
    </nav>
    
    <!-- Book Details Section -->
    <div class="container mt-5 pt-5">
    <br>
    
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="displaycoverpage?id=${book.id}" alt="Book Cover">
                </div>
            </div>
            <div class="col-md-8">
                <h2>${book.title}</h2>
                <p class="text-muted">by ${book.author}</p>
                <p class="lead">${book.description}</p>
                <p><strong>Genre:</strong> ${book.genre}</p>
                <p><strong>Price:</strong> ${book.price}</p>
                <div class="rating mb-3">
                    <c:forEach begin="1" end="${book.rating}">
                        <span class="fa fa-star checked"></span>
                    </c:forEach>
                    <c:forEach begin="${book.rating + 1}" end="5">
                        <span class="fa fa-star"></span>
                    </c:forEach>
                    <span>${book.rating}</span>
                </div>
                <div class="card-button">
                    <form action="<c:url value='addtomycart'></c:url>" method="get">
                        <input type="hidden" name="id" value="${book.id}" />
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <h2 class="title mt-5 text-center">Recommended For You</h2>
    <br>
    <br>
    <div class="container movies-list">
        <div class="row">
            <c:forEach items="${related}" var="book">
                <div class="col-md-3 mb-4">
                    <div class="card" onclick="location.href='viewbookbyid?id=${book.id}'" style="cursor: pointer;">
                        <img src="displaycoverpage?id=${book.id}" class="card-img" alt="${book.title}" />
                        <div class="card-body">
                            <p class="name">${book.title}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
