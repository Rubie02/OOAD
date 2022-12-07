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
    <title>Shop</title>

    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome 5 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body class="product">
    <!-- Navbar Section Start -->
    <jsp:include page="/views/customer/commons/header.jsp"></jsp:include>
    <!-- Navbar Section Exit -->

    <!-- banner Section start -->
    <section class="banner_section">
        <div class="container">
            <div class="banner-content">
                <h1>Sản phẩm</h1>
            </div>
        </div>
    </section>
    <!-- banner section exit -->

    <!-- Gallery Section Start-->
    <section class="category">
    
        
        <div class="container">
            <h1 class="title"> Danh mục <span>sản phẩm</span> <a href="#">Xem tất cả >></a> </h1>
            <div class="box-container">
            
                <c:forEach items="${listC}" var="o">
        		<a href="Category?cid=${o.cateId }" class="box">
            		<img src="${urlImage }cat-${o.cateId }.png" alt="">
            		<h3>${o.cateName }</h3>
        		</a>
    			</c:forEach>
            
            </div>
        </div>
        
    
    </section>
    <section class="landing_product_section">
        
        <div class="container">
            <h1 class="title"> Tất cả <span>sản phẩm</span> <a href="Shop">Xem tất cả >></a> </h1>
    
            <div class="row mx-0">
                <c:forEach items="${listP}" var="o">
                <div class="col-lg-3 col-sm-6 mb-5 d-flex align-items-stretch">
                    <div class="card product-card">
                        <div class="product-img">
                            <img src="${o.productImage }" class="card-img-top" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h4>${o.productName}</h4>
                            
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