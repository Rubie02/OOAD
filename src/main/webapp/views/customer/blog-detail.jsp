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
    <title>About Blog</title>

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
    <h1>about Blog</h1>
    <p> <a href="Home">home >></a> about blog </p>
</div>

<section class="about">

    <div class="image">
        <img src="${detailblog.blogImage}" alt="">
    </div>

    <div class="content">
        <span>welcome to our blog</span>
        <h3>${detailblog.blogName}</h3>
        <p>${detailblog.details }</p>
        <p>Don't hesitate! Shopping time comming!</p>
        <a href="Shop" class="btn">Shop now</a>
    </div>

</section>

<section class="blogs">

    <h1 class="title"> our <span>blogs</span> <a href="Blog">view all >></a> </h1>

    <div class="box-container">
<c:forEach items="${listB}" var="o">
        <div class="box">
            <div class="image">
                <img src="${o.blogImage}" alt="">
            </div>
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-calendar"></i> organic fruit </a>
                    <a href="#"> <i class="fas fa-user"></i> by admin </a>
                </div>
                <h3>${o.blogName}</h3>
                <p>Click "Read More" to read the blog</p>
                <a href="Detailblog?bID=${o.blogId }" class="btn">read more</a>
            </div>
        </div>
</c:forEach>
        
    </div>
    

</section>


<!-- footer section starts  -->

<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>

<!-- footer section ends -->


<!-- custom css file link  -->
<script src="${urljs }script.js"></script>

</body>
</html>