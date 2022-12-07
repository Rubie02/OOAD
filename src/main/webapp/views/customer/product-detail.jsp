<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/images/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Product</title>

    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome 5 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body class="contact">
    <!-- Navbar Section Start -->
    <jsp:include page="/views/customer/commons/header.jsp"></jsp:include>
    <!-- Navbar Section Exit -->

    <!-- banner Section start -->
    <section class="banner_section">
        <div class="container">
            <div class="banner-content">
                <h1>Chi tiết sản phẩm</h1>
            </div>
        </div>
    </section>
    <!-- banner section exit -->

    <!-- Gallery Section Start-->
    <section class="product_section">
        <div class="container">
            
            <div class="row align-items-center py-5">
                <div class="col-xl-5 col-lg-6 col-12 mb-5">
                    <div class="card border-0 me-lg-5">
                        <img src="${detail.productImage }" alt="products">
                    </div>
                </div>
                <div class="col-xl-7 col-lg-6 col-12 mb-5">
                    <div class="product-content">
                        <h2>${detail.productName }</h2>
                        <div class="product-details">
                            <p>${detail.information }</p>                            
                            <a href="add_to_cart?productId=${detail.productId }&quantity=1" class="btn main-btn">Thêm vào giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center py-5">
                <div class="col-xl-7 col-lg-6 col-12 mb-5  order-2 order-lg-1">
                    <div class="product-content">
                        <h2>Đánh giá sản phẩm</h2>
                        <div class="aa-product-review-area">
                        <ul class="aa-review-nav">
                         
                            <c:forEach items="${reviewbyid}" var="review">
                                <li>
                                    <div class="media">
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>${review.name}</strong> - <span>${review.created}</span></h5>
                                            <div class="aa-product-rating">
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                                <span class="fa fa-star"></span>
                                            </div>
                                            <p>${review.content}</p>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        </div>
                        <div class="col-12 contact-form">
	                    <div class="row">
	                        <div class="col-lg-7 mb-5">
	                            <form class="row g-3" method="post" action="${pageContext.request.contextPath}/Review?pid=${detail.productId }">
	                                <div class="col-md-6 mb-4">
	                                    <input type="text" class="form-control" name="name" placeholder="Họ và tên *" required="">
	                                </div>
	                                <div class="col-md-6 mb-4">
	                                    <input type="email" class="form-control" name="email" placeholder="Email *" required="">
	                                </div>
	                                
	                                <div class="col-12 mb-4">
	                                    <textarea class="form-control" name="content" placeholder="Đánh giá"></textarea>
	                                </div>
	                                <div class="col-12">
	                                    <button type="submit" class="btn main-btn">Gửi đánh giá</button>
	                                </div>
	                            </form>
	                        </div>
	                        
	                    </div>
                </div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 col-12 mb-5 order-1 order-lg-2">
                    <div class="card border-0 ms-lg-5">
                        <img src="${detail.productImage }" alt="product" class="img-fluid">
                    </div>
                </div>
            </div>

        </div>
    </section>
    
    <section class="landing_product_section">
        
        <div class="container">
            <h1 class="title"> Sản phẩm <span>khác</span> <a href="Shop">Xem tất cả >></a> </h1>
    
            <div class="row mx-0">
                <c:forEach items="${listP}" var="o">
                <div class="col-lg-3 col-sm-6 mb-5 d-flex align-items-stretch">
                    <div class="card product-card">
                        <div class="product-img">
                            <img src="${o.productImage }" class="card-img-top" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>${o.productName}</h3>
                            <span>${o.price} VNĐ</span>
                        </div>
                        <div class="product-detail">
                            <a href="product_detail?pid=${o.productId }" class="btn main-btn">Xem sản phẩm</a>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
    
        </div>
    </section>
    <!-- Gallery Section Exit -->

    <!-- Footer section Start-->
    <jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>
    <!-- Footer Section Exit  -->

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Lightbox Pupup -->
    <script src="js/lightbox.js"></script>

    <!-- Bootstrap 5 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

    <!-- Custom JS -->
    <script src="${urljs }main.js"></script>
</body>

</html>