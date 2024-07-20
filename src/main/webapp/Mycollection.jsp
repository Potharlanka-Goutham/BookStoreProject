<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Basket</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    
    <style>
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
}
        <style>@charset "utf-8";

@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700,600);

html,
html a {
  -webkit-font-smoothing: antialiased;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
}

body {
  background-color: #fff;
  color: #666;
  font-family: 'Open Sans', sans-serif;
  font-size: 62.5%;
  margin: 0 auto;
}

a {
  border: 0 none;
  outline: 0;
  text-decoration: none;
}

strong {
  font-weight: bold;
}

p {
  margin: 0.75rem 0 0;
}

h1 {
  font-size: 0.75rem;
  font-weight: normal;
  margin: 0;
  padding: 0;
}

input,
button {
  border: 0 none;
  outline: 0 none;
}

button {
  background-color: #666;
  color: #fff;
}

button:hover,
button:focus {
  background-color: #555;
}

img,
.basket-module,
.basket-labels,
.basket-product {
  width: 100%;
}

input,
button,
.basket,
.basket-module,
.basket-labels,
.item,
.price,
.quantity,
.subtotal,
.basket-product,
.product-image,
.product-details {
  float: left;
}

.price:before,
.subtotal:before,
.subtotal-value:before,
.total-value:before,
.promo-value:before {
  content: '£';
}

.hide {
  display: none;
}

main {
  clear: both;
  font-size: 0.75rem;
  margin: 0 auto;
  overflow: hidden;
  padding: 1rem 0;
  width: 960px;
  padding-top: 2px;
}

.basket,
aside {
padding-top: 20px;
  padding: 0 1rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket {
  width: 70%;
}

.basket-module {
  color: #111;
}

label {
  display: block;
  margin-bottom: 0.3125rem;
}

.promo-code-field {
  border: 1px solid #ccc;
  padding: 0.5rem;
  text-transform: uppercase;
  transition: all 0.2s linear;
  width: 48%;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -o-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}

.promo-code-field:hover,
.promo-code-field:focus {
  border: 1px solid #999;
}

.promo-code-cta {
  border-radius: 4px;
  font-size: 0.625rem;
  margin-left: 0.625rem;
  padding: 0.6875rem 1.25rem 0.625rem;
}

.basket-labels {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  margin-top: 1.625rem;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

li {
  color: #111;
  display: inline-block;
  padding: 0.625rem 0;
}

li.price:before,
li.subtotal:before {
  content: '';
}

.item {
  width: 55%;
}

.price,
.quantity,
.subtotal {
  width: 15%;
}

.subtotal {
  text-align: right;
}

.remove {
  bottom: 1.125rem;
  float: right;
  position: absolute;
  right: 0;
  text-align: right;
  width: 45%;
}

.remove button {
  background-color: transparent;
  color: #777;
  float: none;
  text-decoration: underline;
  text-transform: uppercase;
}

.item-heading {
  padding-left: 4.375rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket-product {
  border-bottom: 1px solid #ccc;
  padding: 1rem 0;
  position: relative;
}

.product-image {
  width: 35%;
}

.product-details {
  width: 65%;
}

.product-frame {
  border: 1px solid #aaa;
}

.product-details {
  padding: 0 1.5rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.quantity-field {
  background-color: #ccc;
  border: 1px solid #aaa;
  border-radius: 4px;
  font-size: 0.625rem;
  padding: 2px;
  width: 3.75rem;
}

aside {
  float: right;
  position: relative;
  width: 30%;
  padding-top: 150px;
}

.summary {
  background-color: #eee;
  border: 1px solid #aaa;
  padding: 1rem;
  position: fixed;
  width: 250px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.summary-total-items {
  color: #666;
  font-size: 0.875rem;
  text-align: center;
}

.summary-subtotal,
.summary-total {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  clear: both;
  margin: 1rem 0;
  overflow: hidden;
  padding: 0.5rem 0;
}

.subtotal-title,
.subtotal-value,
.total-title,
.total-value,
.promo-title,
.promo-value {
  color: #111;
  float: left;
  width: 50%;
}

.summary-promo {
  -webkit-transition: all .3s ease;
  -moz-transition: all .3s ease;
  -o-transition: all .3s ease;
  transition: all .3s ease;
}

.promo-title {
  float: left;
  width: 70%;
}

.promo-value {
  color: #8B0000;
  float: left;
  text-align: right;
  width: 30%;
}

.summary-delivery {
  padding-bottom: 3rem;
}

.subtotal-value,
.total-value {
  text-align: right;
}

.total-title {
  font-weight: bold;
  text-transform: uppercase;
}

.summary-checkout {
  display: block;
}

.checkout-cta {
  display: block;
  float: none;
  font-size: 0.75rem;
  text-align: center;
  text-transform: uppercase;
  padding: 0.625rem 0;
  width: 100%;
}

.summary-delivery-selection {
  background-color: #ccc;
  border: 1px solid #aaa;
  border-radius: 4px;
  display: block;
  font-size: 0.625rem;
  height: 34px;
  width: 100%;
}

@media screen and (max-width: 640px) {
  aside,
  .basket,
  .summary,
  .item,
  .remove {
    width: 100%;
  }
  .basket-labels {
    display: none;
  }
  .basket-module {
    margin-bottom: 1rem;
  }
  .item {
    margin-bottom: 1rem;
  }
  .product-image {
    width: 40%;
  }
  .product-details {
    width: 60%;
  }
  .price,
  .subtotal {
    width: 33%;
  }
  .quantity {
    text-align: center;
    width: 34%;
  }
  .quantity-field {
    float: none;
  }
  .remove {
    bottom: 0;
    text-align: left;
    margin-top: 0.75rem;
    position: relative;
  }
  .remove button {
    padding: 0;
  }
  .summary {
    margin-top: 1.25rem;
    position: relative;
  }
}

@media screen and (min-width: 641px) and (max-width: 960px) {
  aside {
    padding: 0 1rem 0 0;
  }
  .summary {
    width: 28%;
  }
}

@media screen and (max-width: 960px) {
  main {
    width: 100%;
  }
  .product-details {
    padding: 0 1rem;
  }
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

    <main>
        <div class="basket">
            <div class="basket-module">
                <label for="promo-code">Enter a promotional code</label>
                <input id="promo-code" type="text" name="promo-code" maxlength="5" class="promo-code-field">
                <button class="promo-code-cta">Apply</button>
            </div>
            <div class="basket-labels">
                <ul>
                    <li class="item item-heading">Item</li>
                    <li class="price">Price</li>
                    <li class="quantity">Quantity</li>
                    <li class="subtotal">Subtotal</li>
                </ul>
            </div>
            <c:forEach items="${books}" var="book">
                <div class="basket-product">
                    <div class="item">
                        <div class="product-image">
                            <img src="displaycoverpage?id=${book.book.id}" alt="Placeholder Image 2" class="product-frame">
                        </div>
                        <div class="product-details">
                            <h1><strong><span class="item-quantity">${book.book.title}</span></strong> ${book.book.description}</h1>
                            <p><strong>${book.book.genre},${book.book.language}</strong></p>
                            <p>${book.book.isbn}</p>
                        </div>
                    </div>
                    <div class="price" data-price="${book.book.price}">${book.book.price}</div>
                    <div class="quantity">
                        <input type="number" value="1" min="1" class="quantity-field" data-id="${book.book.id}">
                    </div>
                    <div class="subtotal" data-id="${book.book.id}">${book.book.price}</div>
                    <div class="remove">
                        <div class="card-button">
                            <form action="<c:url value='deleteorder'></c:url>" method="get">
                                <input type="hidden" name="id" value="${book.id}" />
                                <button type="submit" class="btn btn-primary">Remove</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        
        <aside>
            <div class="summary">
                <div class="summary-total-items"><span class="total-items"></span> Items in your Bag</div>
                <div class="summary-subtotal">
                    <div class="subtotal-title">Subtotal</div>
                    <div class="subtotal-value final-value" id="basket-subtotal">0.00</div>
                    <div class="summary-promo hide">
                        <div class="promo-title">Promotion</div>
                        <div class="promo-value final-value" id="basket-promo"></div>
                    </div>
                </div>
                <div class="summary-delivery">
                    <select name="delivery-collection" class="summary-delivery-selection">
                        <option value="0" selected="selected">Select Collection or Delivery</option>
                        <option value="collection">Collection</option>
                        <option value="first-class">Royal Mail 1st Class</option>
                        <option value="second-class">Royal Mail 2nd Class</option>
                        <option value="signed-for">Royal Mail Special Delivery</option>
                    </select>
                </div>
                <div class="summary-total">
                    <div class="total-title">Total</div>
                    <div class="total-value final-value" id="basket-total">0.00</div>
                </div>
                <div class="summary-checkout">
                    <button class="checkout-cta">Go to Secure Checkout</button>
                </div>
            </div>
        </aside>
    </main>

    <script>
        function updateTotals() {
            let basketSubtotal = 0;
            document.querySelectorAll('.basket-product').forEach(product => {
                const priceElement = product.querySelector('.price');
                const quantityField = product.querySelector('.quantity-field');
                const subtotalElement = product.querySelector('.subtotal');
                const price = parseFloat(priceElement.getAttribute('data-price'));
                const quantity = parseInt(quantityField.value);

                const subtotal = price * quantity;
                subtotalElement.textContent = subtotal.toFixed(2);
                basketSubtotal += subtotal;
            });

            document.getElementById('basket-subtotal').textContent = basketSubtotal.toFixed(2);
            document.getElementById('basket-total').textContent = basketSubtotal.toFixed(2);
        }

        document.querySelectorAll('.quantity-field').forEach(field => {
            field.addEventListener('change', updateTotals);
        });

        window.onload = updateTotals;
    </script>
</body>

</html>
