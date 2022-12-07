
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/css/" var="url"></c:url>
<c:url value="/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="${url }manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">				
                        </div>
                    </div>
                </div>
                </div>
                </div>
               
       
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="update_product" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                         <div class="modal-body">	
                         <div class="form-group">
                                <label>Id</label>
                                <input name="productId" type="text" value="${detail.productId }" class="form-control" required>
                            </div>				
                            <div class="form-group">
                                <label>Name</label>
                                <input name="productName" type="text" value="${detail.productName }" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="productImage" type="text" value="${detail.productImage }" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" value="${detail.price }" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Supplier Id</label>
                                <input name="supId" type="text" value="${detail.supId }" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>MGF</label>
                                <input name="mgf" type="text" value="${detail.mgf }" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>EXP</label>
                                <input name="exp" type="text" value="${detail.exp }" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="information" value="${detail.information }" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="cateId" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.cateId}">${o.cateName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            </div>
                            <div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit" class="btn btn-info"
							value="Save">
					</div>
                    </form>
                </div>
            </div>
        </div>
       
        <script>
               
        </script>
    </body>
</html>