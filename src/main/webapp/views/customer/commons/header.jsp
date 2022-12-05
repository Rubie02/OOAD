<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/image/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html>
<<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <a href="Home" class="logo"> <i class="fas fa-shopping-basket"></i> organic fruit </a>

    <nav class="navbar">
        <a href="Home">home</a>
        <a href="Shop">shop</a>
        <a href="Cart">cart</a>
        <a href="About">about</a>
        <a href="Review">review</a>
        <a href="Blog">blog</a>
        <a href="Contact">contact</a>
    </nav>

    <div class="icons">
    	<c:set var="count" value="${0 }"/>
    	<c:forEach items="${sessionScope.cart }" var="map">
    		<c:set var="count" value="${count+map.value.quantity }"/>
    	</c:forEach>
        <div id="menu-btn" class="fas fa-bars"></div>
        <div id="search-btn" class="fas fa-search"></div>
        <div id="cart-btn" class="fas fa-shopping-cart"><span class="badge badge-light">${count }</span></div>
        <div id="login-btn" class="fas fa-user"></div>
    </div>

    <form action="Search" method="post" class="search-form">
        <input value="${txtS }" name="txt" type="search" placeholder="search here..." id="search-box">

               <button type="submit" class="fas fa-search">
               </button>
           
    </form>

    <div class="shopping-cart">
    <c:set var="total" value="${0 }"/>
    
    <c:forEach items="${sessionScope.cart }" var="map">
        <div class="box">
            <a href="remove_from_cart?productId=${ map.value.product.productId}" class="fas fa-times"></a>
            <img src="${map.value.product.productImage }" alt="">
            <div class="content">
                <h3>${map.value.product.productName }</h3>
                <span class="quantity">${map.value.quantity }</span>
                <span class="multiply">x</span>
                <span class="price">${map.value.product.price } VND</span>
            </div>
        </div>
        <c:set var="total" value="${total+map.value.quantity*map.value.product.price }"/>

        </c:forEach>
        <h3 class="total"> total : <span>${total } VND</span> </h3>
        <a href="Cart" class="btn">checkout cart</a>
    </div>

<c:if test="${sessionScope.acc != null}">
	<form action="Logout" class="login-form">
        <h3>hello ${sessionScope.acc.username}</h3>
        <input type="submit" value="Logout" class="btn">
    </form>
</c:if>
<c:if test="${sessionScope.acc == null}">
    <form action="Login" class="login-form">
        <h3>login form</h3>
        <input name="user" type="text" placeholder="enter your username" class="box" required="" autofocus="">
        <input name="pass" type="password" placeholder="enter your password" class="box" required autofocus="">
        <div class="remember">
            <input type="checkbox" name="" id="remember-me">
            <label for="remember-me">remember me</label>
        </div>
        <input type="submit" value="login now" class="btn">
        <p>don't have an account? <a href="Signup">create one</a></p>
    </form>
</c:if>

</header>
<script src="${urljs }script.js"></script>
</body>
</html>