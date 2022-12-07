<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/image/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html>
<!-- footer section starts  -->
<head>
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
<section class="footer_wrapper mt-3 mt-md-0">
        <div class="container px-5 px-lg-0">
            <div class="row">
                <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                    <h5>Group 16</h5>
                    <p class="mb-4 ps-0 company_details">Rau củ quả tươi sạch tốt cho sức khỏe chỉ có ở Organic Fruit</p>
                    <div class="contact-info">
                        <ul class="list-unstyled">
                            <li><a href="#"><i class="fa fa-home me-3"></i> 01 Võ Văn Ngân, Linh Chiểu, Thủ Đức, TPHCM</a></li>
                            <li><a href="#"><i class="fa fa-phone me-3"></i>+84 394197371</a></li>
                            <li><a href="#"><i class="fa fa-envelope me-3"></i>group16@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                    <h5>Hỗ trợ khách hàng</h5>
                    <ul class="link-widget p-0">
                        <li><a href="#">Thông tin chung</a></li>
                        <li><a href="#">Chính sách riêng tư</a></li>
                        <li><a href="#">Chính sách đổi trả</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                    <h5>Truy cập nhanh</h5>
                    <ul class="link-widget p-0">
                        <li><a href="#">Sản phẩm</a></li>
                        <li><a href="#">Liên hệ</a></li>
                        <li><a href="#">Chính sách sử dụng</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                    <h5>Newsletter</h5>
                    <div class="form-group mb-4">
                        <input type="email" class="form-control bg-transparent" placeholder="Enter Your Email Here">
                        <button type="submit" class="btn main-btn">Subscribe</button>
                    </div>
                    <h5>Kết nối với chúng tôi</h5>
                    <ul class="social-network d-flex align-items-center p-0">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid copyright-section">
            <p>Copyright <a href="#">© Group 16.</a> All Rights Reserved</p>
        </div>
    </section>

<!-- footer section ends -->


<!-- custom css file link  -->
<script src="${urljs }main.js"></script>
</body>

</html>