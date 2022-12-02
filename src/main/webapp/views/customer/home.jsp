<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/image/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
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

<jsp:include page="/views/customer/commons/header.jsp"></jsp:include>

<!-- header section ends -->

<section class="home">

    <div class="slides-container">

        <div class="slide active">
            <div class="content">
                <span>fresh and organic</span>
                <h3>upto 50% off</h3>
                <a href="Shop" class="btn">shop now</a>
            </div>
            <div class="image">
                <img src="${urlImage }home-img-1.png" alt="">
            </div>
        </div>

        <div class="slide">
            <div class="content">
                <span>fresh and organic</span>
                <h3>upto 50% off</h3>
                <a href="Shop" class="btn">shop now</a>
            </div>
            <div class="image">
                <img src="${urlImage }home-img-2.png" alt="">
            </div>
        </div>

        <div class="slide">
            <div class="content">
                <span>fresh and organic</span>
                <h3>upto 50% off</h3>
                <a href="Shop" class="btn">shop now</a>
            </div>
            <div class="image">
                <img src="${urlImage }home-img-3.png" alt="">
            </div>
        </div>

    </div>

    <div id="next-slide" class="fas fa-angle-right" onclick="next()"></div>
    <div id="prev-slide" class="fas fa-angle-left" onclick="next()"></div>

</section>

<section class="banner-container">

    <div class="banner">
        <img src="${urlImage }banner-1.jpg" alt="">
        <div class="content">
            <span>limited sales</span>
            <h3>upto 50% off</h3>
            <a href="Shop" class="btn">shop now</a>
        </div>
    </div>

    <div class="banner">
        <img src="${urlImage }banner-2.jpg" alt="">
        <div class="content">
            <span>limited sales</span>
            <h3>upto 50% off</h3>
            <a href="Shop" class="btn">shop now</a>
        </div>
    </div>

    <div class="banner">
        <img src="${urlImage }banner-3.jpg" alt="">
        <div class="content">
            <span>limited sales</span>
            <h3>upto 50% off</h3>
            <a href="Shop" class="btn">shop now</a>
        </div>
    </div>

</section>

<!-- footer section starts  -->

<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>

<!-- footer section ends -->

<!-- custom css file link  -->
<script src="${urljs }script.js"></script>

</body>
</html>