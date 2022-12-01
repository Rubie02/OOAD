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
    <title>Review</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body>
    
<!-- header section starts  -->

<jsp:include page="/views/customer/commons/header.jsp"></jsp:include>
<!-- header section ends -->

<div class="heading">
    <h1>client's review</h1>
    <p> <a href="Home">home >></a> review </p>
</div>

<section class="info-container">

    <div class="info">
        <img src="${urlImage }icon-1.png" alt="">
        <div class="content">
            <h3>fast delivery</h3>
            <span>within 30 minutes</span>
        </div>
    </div>

    <div class="info">
        <img src="${urlImage }icon-2.png" alt="">
        <div class="content">
            <h3>24 / 7 available</h3>
            <span>call us anytime</span>
        </div>
    </div>

    <div class="info">
        <img src="${urlImage }icon-3.png" alt="">
        <div class="content">
            <h3>easy payments</h3>
            <span>cash or credits</span>
        </div>
    </div>

</section>

<section class="review">

    <div class="box">
        <div class="user">
            <img src="${urlImage }pic-1.png" alt="">
            <div class="info">
                <h3>john deo</h3>
                <span>happy client</span>
            </div>
        </div>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem molestiae expedita culpa officiis harum impedit vel! Odit saepe similique vero!</p>
    </div>

    <div class="box">
        <div class="user">
            <img src="${urlImage }pic-2.png" alt="">
            <div class="info">
                <h3>john deo</h3>
                <span>happy client</span>
            </div>
        </div>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem molestiae expedita culpa officiis harum impedit vel! Odit saepe similique vero!</p>
    </div>

    <div class="box">
        <div class="user">
            <img src="${urlImage }pic-3.png" alt="">
            <div class="info">
                <h3>john deo</h3>
                <span>happy client</span>
            </div>
        </div>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem molestiae expedita culpa officiis harum impedit vel! Odit saepe similique vero!</p>
    </div>

    <div class="box">
        <div class="user">
            <img src="${urlImage }pic-4.png" alt="">
            <div class="info">
                <h3>john deo</h3>
                <span>happy client</span>
            </div>
        </div>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem molestiae expedita culpa officiis harum impedit vel! Odit saepe similique vero!</p>
    </div>

    <div class="box">
        <div class="user">
            <img src="${urlImage }pic-5.png" alt="">
            <div class="info">
                <h3>john deo</h3>
                <span>happy client</span>
            </div>
        </div>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem molestiae expedita culpa officiis harum impedit vel! Odit saepe similique vero!</p>
    </div>

    <div class="box">
        <div class="user">
            <img src="${urlImage }pic-6.png" alt="">
            <div class="info">
                <h3>john deo</h3>
                <span>happy client</span>
            </div>
        </div>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem molestiae expedita culpa officiis harum impedit vel! Odit saepe similique vero!</p>
    </div>

</section>






















<!-- footer section starts  -->

<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>
<!-- footer section ends -->













<!-- custom css file link  -->
<script src="${urljs }script.js"></script>

</body>
</html>