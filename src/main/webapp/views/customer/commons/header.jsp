<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/images/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html>
<<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome 5 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body>
    
<!-- header section starts  -->

<header id="full_nav">
        <div class="header">
            <div class="container">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="index.html">
                        <img src="${urlImage }/logo.png" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav"
                        aria-controls="main-nav" aria-expanded="false" aria-label="Toggle navigation">
                        <!-- <span class="navbar-toggler-icon"></span> -->
                        <i class="fas fa-stream navbar-toggler-icon"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="main-nav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="Home">Trang chủ</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Shop">Sản phẩm</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Cart">Giỏ hàng</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link " href="Blog">Bài viết</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Contact">Liên hệ</a>
                            </li>
                        </ul>

                        <div class="header_right">
                            <div class="text-lg-end">
                                <span>Gọi ngay!</span>
                                <span class="phone_no">+84 394197371</span>
                            </div>
                        </div>
                        <div class="icons">
                            <div id="menu-btn" class="fas fa-bars"></div>
                            <div id="search-btn" class="fas fa-search"></div>
                            <div id="cart-btn" class="fas fa-shopping-cart"></div>
                            <div id="login-btn" class="fas fa-user"></div>
                        </div>

                        <form action="" class="search-form">
                            <input value ="${txtS }" name="txt" type="search" placeholder="search here..." id="search-box">
                            <label for="search-box" class="fas fa-search"></label>
                        </form>

                        <div class="shopping-cart">
                            <div class="box">
                                <i class="fas fa-times"></i>
                                <img src="${urlImage }/cart-1.jpg" alt="">
                                <div class="content">
                                    <h3>Cải xanh</h3>
                                    <span class="quantity">1</span>
                                    <span class="multiply">x</span>
                                    <span class="price">18 000 VNĐ</span>
                                </div>
                            </div>
                            <div class="box">
                                <i class="fas fa-times"></i>
                                <img src="${urlImage }/cart-2.jpg" alt="">
                                <div class="content">
                                    <h3>Sữa tươi</h3>
                                    <span class="quantity">1</span>
                                    <span class="multiply">x</span>
                                    <span class="price">10 000 VNĐ</span>
                                </div>
                            </div>
                            <div class="box">
                                <i class="fas fa-times"></i>
                                <img src="${urlImage }/cart-3.jpg" alt="">
                                <div class="content">
                                    <h3>Đậu đỏ </h3>
                                    <span class="quantity">1kg</span>
                                    <span class="multiply">x</span>
                                    <span class="price">18 000 VNĐ</span>
                                </div>
                            </div>
                            <h3 class="total"> Tổng : <span>46 000 VNĐ</span> </h3>
                            <a href="#" class="btn">Thanh toán giỏ hàng</a>
                        </div>
						<c:if test="${sessionScope.acc != null}">
							<form action="Logout" class="login-form">
						        <h3>hello ${sessionScope.acc.username}</h3>
						        <input type="submit" value="Logout" class="btn">
						    </form>
						</c:if>
						<c:if test="${sessionScope.acc == null}">
	                        <form action="" class="login-form">
	                            <h3>Đăng nhập</h3>
	                            <input type="email" placeholder="Email" class="box">
	                            <input type="password" placeholder="Password" class="box">
	                            <div class="remember">
	                                <input type="checkbox" name="" id="remember-me">
	                                <label for="remember-me">Lưu đăng nhập</label>
	                            </div>
	                            <input type="submit" value="Đăng nhập ngay" class="btn">
	                            <p>Quên mật khẩu? <a href="#">Bấm vào đây</a></p>
	                            <p>Chưa có tài khoản? <a href="#">Tạo tài khoản mới</a></p>
	                        </form>
	                     </c:if>
                    </div>
                </nav>
            </div>
        </div>
    </header>
<script src="${urljs }main.js"></script>
</body>
</html>