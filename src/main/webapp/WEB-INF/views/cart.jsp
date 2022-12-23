<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>ShopApp</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<header style="Width: 100%;height:100px;background-color:rgb(219, 189, 20);font-size:20px">
    <div class="nav__list">
        <div class="nav_div_link">
            <a class="nav__link active-link" href="/home" onclick="route()">TRANG CHỦ</a>
        </div>
        <div class="nav_div_link">
            <a class="nav__link "  onclick="route()">GIỚI THIỆU</a>
        </div>
        <div class="nav_div_link">
            <a class="nav__link" href="/product" >Sản Phẩm</a>
        </div>
        <div class="nav_div_link">
            <a class="nav__link " onclick="route()">LIÊN HỆ</a>
        </div>
        <div class="nav_div_link " style="border:none ;">
            <a class="header_myAccount nav__link" href="/myAccount" onclick="route()">
                MyAccount
            </a>
            <img class="nav__link__img" src="../assets/img-icon/person-not-login-icon.png" alt="">
        </div>
        <div class="nav_div_link">
            <a class="nav__link " onclick="route()" href="/cart">Giỏ hàng</a>
            <i class="fa-solid fa-cart-shopping"></i>
        </div>
    </div>
</header>

<aside>
    <div class="container mt-5 mb-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-8">
                <div class="p-2">
                    <h4>Giỏ Hàng </h4>
                    <div class="d-flex flex-row align-items-center pull-right"><span class="mr-1">Sắp xếp theo:</span><span class="mr-1 font-weight-bold">Giá</span><i class="fa fa-angle-down"></i></div>
                </div>
                <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded">
                    <div class="mr-1"><img class="rounded" src="https://i.imgur.com/XiFJkhI.jpg" width="70"></div>

                    <div class="d-flex flex-row align-items-center qty"><i class="fa fa-minus text-danger"></i>
                        <h5 class="text-grey mt-1 mr-1 ml-1">2</h5><i class="fa fa-plus text-success"></i></div>
                    <div>
                        <h5 class="text-grey">$20.00</h5>
                    </div>
                    <div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div>
                </div>
                <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded"><button class="btn btn-warning btn-block btn-lg ml-2 pay-button" type="button">Mua Hàng</button></div>
            </div>
        </div>
    </div>

</aside>

<%--<footer style="Width: 100%;height:100px;background-color:rgb(236, 226, 170);font-size:20px">--%>
    <%--footer--%>
<%--</footer>--%>

<!--=============== MAIN JS ===============-->
<script src="../js/main.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<!--=============== API JS ===============-->
<script src="../js/api.js"></script>

</body>
</html>
