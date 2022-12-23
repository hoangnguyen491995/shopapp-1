<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>ShopApp</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="../css/index.css"/>
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
        <div class="nav_div_link" href="/product" >
            <a class="nav__link">Sản Phẩm</a>
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
    </div>
</header>
<h1>
    Catalog
</h1>
<section style="display: flex; justify-content: space-around">
    <c:forEach var="item" items="${catalog}"   >
        <a href="catalog?catalogId=${item.catalogId}">${item.catalogName}
        </a>

    </c:forEach>
</section>
<aside style="display: flex;flex-direction: column" >

    <c:forEach var="item" items="${products}">
        <div class="product">
            <div style="display: flex;">
                <p>
                    Tên sản Phẩm :
                    <span>${item.nameProduct}</span>
                </p>
                <img class="img" src="http://noithathoaphat.com.vn/product_images/m/325/GL327__71301_zoom.jpg" alt="hình ảnh">

            </div>
            <p style="color:red">
                Giá :
                <span>${item.price} Vnđ</span>
            </p>

                <%--<p style="max-width:200px">--%>
                <%--Mô Tả :--%>
                <%--<span class="description">${item.description}</span>--%>
                <%--</p>--%>

        </div>
    </c:forEach>
</aside>

<footer style="Width: 100%;height:100px;background-color:rgb(236, 226, 170);font-size:20px">
    footer
</footer>

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
<!--=============== API JS ===============-->
<script src="../js/api.js"></script>

</body>
</html>
