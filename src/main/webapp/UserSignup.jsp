<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
    <style>@import url("https://fonts.googleapis.com/css2?family=Inconsolata&display=swap");
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
          body {
            background: url(images/loginbg.png)
              no-repeat center center;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
            min-height: 100vh;
          }
        
        
        
        .box {
            position: relative;
            height: 460px;
            width: 700px;
            border-radius: 14px;
            background-color: white;
            box-shadow: 0px 0px 10px 10px rgba(81, 72, 72, 0.336);
            margin-left: 80px;
        }
          form {
            position: absolute;
            inset: 2px;
            background: transparent;
            backdrop-filter: blur(1px);
            padding: 50px 40px;
            border-radius: 8px;
            z-index: 2;
            display: flex;
            flex-direction: column;
          }
          h2 {
            color: #000;
            font-weight: bold;
            font-weight: 500;
            text-align: center;
            letter-spacing: 0.1em;
          }
          .inputBox {
            position: relative;
            width: 300px;
            margin-top: 35px;
            margin-right: 10px;
          }
          .inputBox input {
            position: relative;
            width: 100%;
            padding: 20px 10px 10px;
            background: transparent;
            outline: none;
            box-shadow: none;
            border: none;
            color: #000;
            font-size: 1em;
            letter-spacing: 0.05em;
            transition: 0.5s;
            z-index: 10;
          }
          .inputBox span {
            position: absolute;
            left: 0;
            padding: 20px 0px 10px;
            pointer-events: none;
            font-size: 1em;
            color: #000;
            font-weight: bold   ;
            letter-spacing: 0.05em;
            transition: 0.5s;
          }
          .inputBox input:valid ~ span,
          .inputBox input:focus ~ span {
            color: #000;
            transform: translateX(0px) translateY(-34px);
            font-size: 0.75em;
          }
          .inputBox i {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 2px;
            background: #f5f0e1;
            border-radius: 4px;
            overflow: hidden;
            transition: 0.5s;
            pointer-events: none;
            z-index: 9;
          }
          .inputBox input:valid ~ i,
          .inputBox input:focus ~ i {
            height: 44px;
          }
          .links {
            display: flex;
            justify-content: space-between;
          }
          .links a {
            margin: 10px 0;
            font-size: 0.75em;
            color: #000;
            text-decoration: beige;
          }
          .links a:hover,
          .links a:nth-child(2) {
            color: orangered;
          }
          input[type="submit"] {
            border: none;
            outline: none;
            padding: 11px 25px;
            background: #f5f0e1;
            cursor: pointer;
            border-radius: 4px;
            font-weight: 600;
            width: 100px;
            margin-top: 10px;
          }
          input[type="submit"]:active {
            opacity: 0.8;
          }
        </style>
</head>

<body>
    <div class="container ml-5">
        <div class="row">
            <div class="col-12  col-md-6 col-lg-6 col-xl-6">
                <div class="holder ">
                    <div class="box">
                        <form autocomplete="on"  action="/userRegister" method="POST">
                            <h2>Registration</h2>
                            <div class="row">
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="inputBox">
                                        <input type="text" id="firstname" name="firstname" required>
                                        <span>First Name</span>
                                        <i></i>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="inputBox">
                                        <input type="text" id="lastname" name="lastname" required>
                                        <span>Last Name</span>
                                        <i></i>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="inputBox">
                                        <input type="email" id="email" name="email" required>
                                        <span>Email</span>
                                        <i></i>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="inputBox">
                                        <input type="text" id="mobilenumber" name="mobilenumber" required>
                                        <span>Mobile Number</span>
                                        <i></i>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="inputBox">
                                        <input type="text" id="username" name="username" required>
                                        <span>Username</span>
                                        <i></i>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-6">
                                    <div class="inputBox">
                                        <input type="password" id="password" name="password" required>
                                        <span>Password</span>
                                        <i></i>
                                    </div>
                                </div>
                            </div>
                            <input type="submit" value="Submit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
