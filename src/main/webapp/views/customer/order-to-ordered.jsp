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
    <title>Check</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="${url }style.css">

</head>
<body>
    
<!-- header section starts  -->

<jsp:include page="/views/customer/commons/header.jsp"></jsp:include>

<!-- header section ends -->

<div class="heading">
    <h1>fill your information</h1>
    <p> <a href="Home">home >></a> your information </p>
</div>

<section class="contact">

    <div class="icons-container">

        <div class="icons">
            <i class="fas fa-phone"></i>
            <h3>our number</h3>
            <p>033.699.1010</p>
        </div>

        <div class="icons">
            <i class="fas fa-envelope"></i>
            <h3>our email</h3>
            <p>group16@gmail.com</p>
        </div>

        <div class="icons">
            <i class="fas fa-map-marker-alt"></i>
            <h3>our address</h3>
            <p>Hoang Dieu 2, Thu Duc, Tp. HCM</p>
        </div>

    </div>
    <div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col" class="info">Image</th>
                            <th scope="col"class="content">Product</th>
                            <th scope="col"class="content">Status</th>
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col" class="text-right">Price</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sessionScope.cart }" var="map">
                        <tr>
                            <td><img class="img-reponsive" width="80px" height="80px" src="${map.value.product.productImage }" /> </td>
                            <td>${map.value.product.productName }</td>
                            <td>In stock</td>
                            <td>
                            <div class="form-group d-flex justify-content-between">

                            		<input class="form-control" type="text" value="${map.value.quantity }" />
    
                            </div >
                            </td>
                            <td class="text-right">${map.value.product.price*map.value.quantity } VND </td>
                            <td class="text-right"><a href="remove_from_cart?productId=${ map.value.product.productId}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> </a> </td>
                        </tr>
                        </c:forEach>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                            <c:set var="total" value="${0 }"/>   
                            <c:forEach items="${sessionScope.cart }" var="map">
                            	<c:set var="total" value="${total+map.value.quantity*map.value.product.price }"/>
                            	</c:forEach>                        
                            <td class="text-right"><strong>${total } VND</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>

    <div class="row">

        <form action="order_list" method="post">
            <h3>Check your information</h3>
            <div class="inputBox">
                <input name="cusName" type="text" value="${cus.cusName }" class="box" >
                <input name="cusAddress" type="text" value="${cus.cusAddress }" class="box" >
                <input name="cusPhoneNumber" type="text" value="${cus.cusPhoneNumber }" class="box" >
                <input name="username" type="text" class="box" value="${sessionScope.acc.username }">
            </div>
            <a href="otod">
            	<input type="submit" value="Buy" class="btn">
            </a>
        </form>
        	

        <iframe class="map" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=Hoang Dieu 2, Thu Duc, TP. Hcm&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" allowfullscreen="" loading="lazy"></iframe>

    </div>

</section>

<!-- footer section starts  -->
<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>
<!-- footer section ends -->


<!-- custom css file link  -->
<script src="${urljs }script.js"></script>

</body>
</html>