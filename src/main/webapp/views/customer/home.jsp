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

<jsp:include page="/views/customer/commons/header.jsp"></jsp:include>

<!-- header section ends -->

 <section class="banner_section">
        <div class="container">
            <div id="banner-carousel" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-caption">
                            <div class="banner-content">
                                <h1>100% Organic</h1>
                                <h3>Rau củ quả tươi sạch tự nhiên</h3>
                                <p>Hãy đến với chúng tôi để nhận nhiều ưu đãi hấp dẫn</p>
                                <a href="Shop" class="btn main-btn">Mua hàng ngay</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-caption">
                            <div class="banner-content">
                                <h1>100% Organic</h1>
                                <h3>Rau củ quả tươi sạch tự nhiên</h3>
                                <p>Hãy đến với chúng tôi để nhận nhiều ưu đãi hấp dẫn</p>
                                <a href="Shop" class="btn main-btn">Mua hàng ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<section class="feature_section">
        <div class="container">
            <div class="row">
                <div class="col-6 col-lg-3 mb-5">
                    <div class="card features-box">
                        <div class="text-center">
                            <div class="features-icon-border">
                                <div class="features-icon">
                                    <img src="${urlImage }/feature-icon/ui-chat.svg">
                                </div>
                            </div>
                            <div class="features-text">
                                <h3>Hỗ trợ 24/7</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 mb-5">
                    <div class="card features-box">
                        <div class="text-center">
                            <div class="features-icon-border">
                                <div class="features-icon">
                                    <img src="${urlImage }/feature-icon/truck-loaded.svg">
                                </div>
                            </div>
                            <div class="features-text">
                                <h3>Miễn phí vận chuyển</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 mb-5">
                    <div class="card features-box">
                        <div class="text-center">
                            <div class="features-icon-border">
                                <div class="features-icon">
                                    <img src="${urlImage }/feature-icon/wheat.svg">
                                </div>
                            </div>
                            <div class="features-text">
                                <h3>Fresh & Healthy</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 mb-5">
                    <div class="card features-box">
                        <div class="text-center">
                            <div class="features-icon-border">
                                <div class="features-icon">
                                    <img src="${urlImage }/feature-icon/lemon.svg">
                                </div>
                            </div>
                            <div class="features-text">
                                <h3>Chất lượng uy tín</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="landing_about_section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-5 col-lg-6 col-sm-8">
                    <div class="about-content">
                        <h2>Chúng tôi cung cấp dịch vụ từ năm 2021 với niềm tự hào.</h2>
                        <div class="about-details">
                            
                            <p>Chúng tôi tự hào là nhà cung cấp tất cả những loại trái cây và rau tươi cho bạn. Từ những câu chuyện về nguồn gốc đến những lợi ích sức khỏe, từ mẹo bảo quản đơn giản và công thức nấu ăn ngon cho đến mọi thứ liên quan, 
                            chúng tôi luôn quan tâm đến sức khỏe và vị giác của bạn.</p>
                            <p>Tại Organic Fruit, chúng tôi đảm bảo việc cung cấp tuyển chọn các sản phẩm thực phẩm cao cấp ở mức độ tươi ngon nhất. Chúng tôi tin rằng những lợi ích của việc ăn theo mùa, địa phương, 
                            tươi và hữu cơ góp phần trực tiếp vào sức khỏe và hạnh phúc của bạn.</p>

                            <a href="#" class="btn main-btn">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--About Section Exit -->

    <!--Product Section start -->
    <section class="landing_product_section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 text-center pb-5">
                    <h2 class="section-title">Sản phẩm bán chạy</h2>
                    
                </div>
            </div>

            <div class="row mx-0">
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img src="./images/products/product-1.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Musk Melon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="product.html" class="btn main-btn">View PRoducts</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img src="./images/products/product-2.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Orange</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="product.html" class="btn main-btn">View PRoducts</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img src="./images/products/product-3.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Apple</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="product.html" class="btn main-btn">View PRoducts</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img src="./images/products/product-4.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Dragon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="product.html" class="btn main-btn">View PRoducts</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!--Product Section Exit -->

    <!-- testimonial Section start -->
    <section class="testimonial_section">
        <div class="container">
        	<div class="row pb-5">
                <div class="col-12 text-center">
                    <h2 class="section-title">Khách hàng thân quen</h2>
                    
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-xl-8 col-md-10">
                    <div id="testimonial-slider" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button data-bs-target="#testimonial-slider" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                            <button data-bs-target="#testimonial-slider" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                            <button data-bs-target="#testimonial-slider" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="d-sm-flex row">
                                    <div class="profile-box col-sm-5">
                                        <img src="${urlImage }/testimonial/testimonial-1.png" class="img-fluid">
                                    </div>
                                    <div class="card  col-sm-7">
                                        <div class="desc-box">
                                            <p class="fst-italic">Không chỉ hỗ trợ khách hàng rất nhanh mà thiết kế còn rất chuyên nghiệp. 
                                            Chắc chắn sẽ mua lại nhiều lần nữa.</p>
                                            <div class="my-4">
                                                <h4>Dieu Hien</h4>
                                                <p class="m-0 text-white">Khách hàng thân quen</p>
                                            </div>
                                            <img src="${urlImage }/testimonial/qoutes.svg" class="float-end">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="d-sm-flex row">
                                    <div class="profile-box col-sm-5">
                                        <img src="${urlImage }/testimonial/testimonial-1.png" class="img-fluid">
                                    </div>
                                    <div class="card  col-sm-7">
                                        <div class="desc-box">
                                            <p class="fst-italic">Chất lượng vượt mong đợi mà còn nhiều chương trình ưu đãi nữa.
                                            Không còn gì để nói!</p>
                                            <div class="my-4">
                                                <h4>Ngon Hoai</h4>
                                                <p class="m-0 text-white">Khách hàng thân quen</p>
                                            </div>
                                            <img src="${urlImage }/testimonial/qoutes.svg" class="float-end">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="d-sm-flex row">
                                    <div class="profile-box col-sm-5">
                                        <img src="${urlImage }/testimonial/testimonial-1.png" class="img-fluid">
                                    </div>
                                    <div class="card  col-sm-7">
                                        <div class="desc-box">
                                            <p class="fst-italic">Lần đầu tiên mua hàng online nên là hơi lo lo, cứ sợ bị lừa. 
                                            Nhưng đỡ cái là shop này hỗ trợ cho mình rất tận tình luôn nên cũng yên tâm được phần nào</p>
                                            <div class="my-4">
                                                <h4>Xuan Bach</h4>
                                                <p class="m-0 text-white">Khách hàng mới</p>
                                            </div>
                                            <img src="${urlImage }/testimonial/qoutes.svg" class="float-end">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
        </div>
      </div>   
    </section>
    <!--testimonial Section Exit -->

    <!-- Gallery Section Start-->
    <section class="gallery_section">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center pb-5">
                    <h2 class="section-title">Một số hình ảnh</h2>
                    
                </div>
                <div class="col-sm-6 col-lg-4 mb-4">
                    <a href="${urlImage }/gallery/g-1.jpg" data-lightbox="image" data-title="Lemon">
                        <img src="${urlImage }/gallery/g-1.jpg" class="img-fluid rounded-3">
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 mb-4">
                    <a href="${urlImage }/gallery/g-2.jpg" data-lightbox="image" data-title="Lemon">
                        <img src="${urlImage }/gallery/g-2.jpg" class="img-fluid rounded-3">
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 mb-4">
                    <a href="${urlImage }/gallery/g-3.jpg" data-lightbox="image" data-title="Lemon">
                        <img src="${urlImage }/gallery/g-3.jpg" class="img-fluid rounded-3">
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 mb-4">
                    <a href="${urlImage }/gallery/g-4.jpg" data-lightbox="image" data-title="Lemon">
                        <img src="${urlImage }/gallery/g-4.jpg" class="img-fluid rounded-3">
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 mb-4">
                    <a href="${urlImage }/gallery/g-5.jpg" data-lightbox="image" data-title="Lemon">
                        <img src="${urlImage }/gallery/g-5.jpg" class="img-fluid rounded-3">
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 mb-4">
                    <a href="${urlImage }/gallery/g-6.jpg" data-lightbox="image" data-title="Lemon">
                        <img src="${urlImage }/gallery/g-6.jpg" class="img-fluid rounded-3">
                    </a>
                </div>

                <div class="col-sm-12 text-center mt-4">
                    <a href="#" class="btn main-btn">Xem thêm</a>
                </div>
            </div>
        </div>
    </section>

<!-- footer section starts  -->

<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>

<!-- footer section ends -->

<!-- custom css file link  -->
<script src="${urljs }main.js"></script>

</body>
</html>