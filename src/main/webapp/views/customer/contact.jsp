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
    <title>Contact</title>

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
                <h1>Liên hệ</h1>
            </div>
        </div>
    </section>
    <!-- banner section exit -->

    <!-- Gallery Section Start-->
    <section class="contact_section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 text-center pb-5">
                    <h2 class="section-title">Liên hệ với chúng tôi</h2>
                    <p class="section-subtitle">Trải nghiệm của khách hàng
                    luôn được ưu tiên lên hàng đầu tại Organic Fruit</p>
                </div>
                <div class="col-12 contact-form">
                    <div class="row">
                        <div class="col-lg-7 mb-5">
                            <form class="row g-3">
                                <div class="col-md-6 mb-4">
                                    <input type="text" class="form-control" placeholder="Họ và tên *" required="">
                                </div>
                                <div class="col-md-6 mb-4">
                                    <input type="email" class="form-control" placeholder="Email *" required="">
                                </div>
                                <div class="col-md-6 mb-4">
                                    <input type="text" class="form-control" placeholder="Địa chỉ *" required="">
                                </div>
                                <div class="col-md-6 mb-4">
                                    <input type="number" class="form-control" placeholder="Số điện thoại*" required="">
                                </div>
                                <div class="col-12 mb-4">
                                    <input class="form-control" placeholder="Phản hồi">
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn main-btn">Gửi phản hồi</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-5 mb-5">
                            <div class="content-box ms-sm-5">
                                <ul class="info-box clearfix">
                                    <li>
                                        <i class="fas fa-phone-alt"></i>
                                        <p>Giải đáp thắc mắc? Hãy gọi</p>
                                        <div>
                                            <a href="#">+84 12345678</a>
                                        </div>
                                    </li>
                                    <li>
                                        <i class="far fa-envelope-open"></i>
                                        <p>Hoặc liên hệ qua</p>
                                        <div>
                                            <a href="#">group16@example.com</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
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