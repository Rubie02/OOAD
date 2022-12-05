<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/views/customer/css/" var="url"></c:url>
<c:url value="/views/customer/image/" var="urlImage"></c:url>
<c:url value="/views/customer/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html lang="fr">
<head>
    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cart</title>
    <!-- CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
    <link href="${url}style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="/views/customer/commons/header.jsp"></jsp:include>
<div class="heading">
    <h1>about cart</h1>
    <p> <a href="Home">home >></a> about cart </p>
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
                            	<a class="btn btn-sm btn decre" href="quantity_inc_dec?action=dec&id=${map.value.product.productId }"><i class="fas fa-minus-square"></i></a>
                            		<input class="form-control" type="text" value="${map.value.quantity }" />
                            	<a class="btn btn-sm btn incre" href="quantity_inc_dec?action=inc&id=${map.value.product.productId }"><i class="fas fa-plus-square"></i></a>
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
        <div class="col mb-2">
            <div class="row">	
                <div class="col-sm-12  col-md-6">
                <a href ="Shop">
                    <button  class="btn btn-block btn-light">Continue Shopping</button>
                    </a>
                </div>
                <div class="col-sm-12 col-md-6 text-right">
                <a href="#">
                    <button class="btn btn-lg btn-block btn-success text-uppercase">Buy</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="/views/customer/commons/footer.jsp"></jsp:include>

<!-- JS -->
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" type="text/javascript"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" type="text/javascript"></script>

<script src="${urljs }script.js"></script>

</body>
</html>
