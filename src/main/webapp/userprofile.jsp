<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Settings</title> 
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: black;
        }
        .bg-cont {
            max-width: 900px; /* Adjust as needed */
            width: 100%;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: navy
        }

        .profile-button {
            background: navy;
            box-shadow: none;
            border: none
        }

        .profile-button:hover {
            background: #682773
        }

        .profile-button:focus {
            background: #682773;
            box-shadow: none
        }

        .profile-button:active {
            background: #682773;
            box-shadow: none
        }

        .back:hover {
            color: #682773;
            cursor: pointer
        }

        .labels {
            font-size: 11px
        }

        .add-experience:hover {
            background: #BA68C8;
            color: #fff;
            cursor: pointer;
            border: solid 1px #BA68C8
        }
        .bg-cont {
            max-width: 900px; /* Adjust as needed */
        }
        .navbar-main {
            padding-top: 2px;
            padding-bottom: 10px;
        }
        .navbar-brand {
            font-size: 2em;
            font-weight: bold;
        }
        .navbar a:hover {
            background-color: #E94560;
            color: black;
        }
        .navbar-pink {
            background-color: #16213E /* Pink color */
        }
    </style>
</head>
<body>

<!-- Main Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-pink fixed-top mb-3">
    <a class="navbar-brand name-logo" href="#">BookStore</a>
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

<div class="container bg-white rounded bg-cont">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle mt-5" width="150px" src="images/profile.jpg" alt="Profile Picture">
                <span class="font-weight-bold"><c:out value="${user.username}"/></span>
            </div>
        </div>
        <div class="col-md-9 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6">
                        <label class="labels">First Name</label>
                        <input type="text" class="form-control" placeholder="first name" value="<c:out value="${user.firstname}"/>" readonly>
                    </div>
                    <div class="col-md-6">
                        <label class="labels">Last Name</label>
                        <input type="text" class="form-control" placeholder="last name" value="<c:out value="${user.lastname}"/>" readonly>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6">
                        <label class="labels">Mobile Number</label>
                        <input type="text" class="form-control" placeholder="enter phone number" value="<c:out value="${user.mobilenumber}"/>" readonly>
                    </div>
                    <div class="col-md-9">
                        <label class="labels">Email</label>
                        <input type="text" class="form-control" placeholder="enter email id" value="<c:out value="${user.email}"/>" readonly>
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <button class="btn btn-primary profile-button" type="button">Save Profile</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
