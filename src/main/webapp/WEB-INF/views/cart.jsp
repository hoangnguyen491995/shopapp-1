<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>ShopApp</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>

<body>
<header style="Width: 100%;height:100px;background-color:rgb(219, 189, 20);font-size:20px">
    <div class="nav__list" style="color:#007bff">
        <div class="nav_div_link">
            <a class="nav__link active-link" href="/home" onclick="route()">TRANG CHỦ</a>
        </div>
        <div class="nav_div_link ">
            <a class="nav__link ">GIỚI THIỆU</a>
        </div>
        <div class="nav_div_link">
            <a class="nav__link" href="/product">Sản Phẩm</a>
        </div>

        <div class="nav_div_link " style="border:none ;">
            ${pageContext.request.userPrincipal.name}
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <a href="#" onclick="document.forms['logoutForm'].submit()">Đăng xuất</a>
        </c:if>
    </div>
</header>
<aside>
    <div class="container mt-5 mb-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-8">
                <div class="p-2">
                    <h4>Giỏ Hàng của bạn </h4>
                </div>
                <c:forEach var="item" items="${oderDetail}">
                    <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded">
                        <div class="mr-1">
                        </div>
                        <div class="d-flex flex-row align-items-center qty">
                            <img style="width: 70px;height: 70px" src="${item.product.url}"/>
                        </div>
                        <div style="display: flex;  justify-content: center; align-items: center">
                            <a href="/cart/delete-product?productId=${item.product.id}">-</a>
                            <span style="margin: 0 5px"> ${item.quantity} </span>
                            <a href="/cart/add-product?productId=${item.product.id}">+</a>
                        </div>
                        <div class="d-flex flex-row align-items-center qty">
                            <h5 class="text-grey">${item.product.nameProduct}</h5>
                        </div>
                        <div>
                            <span style="color: red" class="text-grey"> ${item.product.price} Vnđ </span>
                        </div>

                        <div class="d-flex align-items-center"><a
                                href="/cart/delete-products?productId=${item.product.id}"
                        ><i
                                class="fa fa-trash mb-1 text-danger"></i></a>
                        </div>

                    </div>
                </c:forEach>
                <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded">
                    <button
                            class="btn btn-warning btn-block btn-lg ml-2 pay-button" type="button">
                        <a href="/product">Tiếp tục mua hàng</a></button>
                </div>
            </div>
        </div>
    </div>

</aside>
<footer class="text-center text-white" style="background-color: #f1f1f1;width: 100%">
    <!-- Grid container -->
    <div class="container pt-4">
        <!-- Section: Social media -->
        <section class="mb-4">
            <!-- Facebook -->
            <a class="btn btn-link btn-floating btn-lg  m-1" href="#!" role="button"
               data-mdb-ripple-color="dark"><i class=" text-dark fab fa-facebook-f"></i></a>

            <!-- Twitter -->
            <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
               data-mdb-ripple-color="dark"><i class="fab fa-twitter"></i></a>

            <!-- Google -->
            <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
               data-mdb-ripple-color="dark"><i class="fab fa-google"></i></a>

            <!-- Instagram -->
            <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
               data-mdb-ripple-color="dark"><i class="fab fa-instagram"></i></a>

            <!-- Linkedin -->
            <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
               data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
            <!-- Github -->
            <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
               data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
        </section>
        <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2022 Copyright:
        <a class="text-dark" href="https://mdbootstrap.com/">shopApp.com</a>
    </div>
    <!-- Copyright -->
</footer>

<!--=============== MAIN JS ===============-->
<%--<script src="../js/main.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<!--=============== API JS ===============-->

</body>

</html>