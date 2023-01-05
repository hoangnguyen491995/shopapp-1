<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>ShopApp</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        @use postcss-preset-env {
            stage: 0;
        }

        /* config.css */

        :root {
            --baseColor: #606468;
        }

        /* helpers/align.css */

        .align {
            display: grid;
            place-items: center;
        }

        .grid {
            inline-size: 90%;
            margin-inline: auto;
            max-inline-size: 20rem;
        }

        /* helpers/hidden.css */

        .hidden {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
        }

        /* helpers/icon.css */

        :root {
            --iconFill: var(--baseColor);
        }

        .icons {
            display: none;
        }

        .icon {
            block-size: 1em;
            display: inline-block;
            fill: var(--iconFill);
            inline-size: 1em;
            vertical-align: middle;
        }

        /* layout/base.css */

        :root {
            --htmlFontSize: 100%;

            --bodyBackgroundColor: #2c3338;
            --bodyColor: var(--baseColor);
            --bodyFontFamily: "Open Sans";
            --bodyFontFamilyFallback: sans-serif;
            --bodyFontSize: 0.875rem;
            --bodyFontWeight: 400;
            --bodyLineHeight: 1.5;
        }

        * {
            box-sizing: inherit;
        }

        html {
            box-sizing: border-box;
            font-size: var(--htmlFontSize);
        }


        /* modules/anchor.css */

        :root {
            --anchorColor: #eee;
        }

        a {
            color: var(--anchorColor);
            outline: 0;
            text-decoration: none;
        }

        a:focus,
        a:hover {
            text-decoration: underline;
        }

        /* modules/form.css */

        :root {
            --formGap: 0.875rem;
        }

        input {
            background-image: none;
            border: 0;
            color: inherit;
            font: inherit;
            margin: 0;
            outline: 0;
            padding: 0;
            transition: background-color 0.3s;
        }

        input[type="submit"] {
            cursor: pointer;
        }

        .form {
            display: grid;
            gap: var(--formGap);
        }

        .form input[type="password"],
        .form input[type="text"],
        .form input[type="submit"] {
            inline-size: 100%;
        }

        .form__field {
            display: flex;
        }

        .form__input {
            flex: 1;
        }

        /* modules/login.css */

        :root {
            --loginBorderRadus: 0.25rem;
            --loginColor: #eee;

            --loginInputBackgroundColor: #3b4148;
            --loginInputHoverBackgroundColor: #434a52;

            --loginLabelBackgroundColor: #363b41;

            --loginSubmitBackgroundColor: #ea4c88;
            --loginSubmitColor: #eee;
            --loginSubmitHoverBackgroundColor: #d44179;
        }

        .login {
            color: var(--loginColor);
        }

        .login label,
        .login input[type="text"],
        .login input[type="password"],
        .login input[type="submit"] {
            border-radius: var(--loginBorderRadus);
            padding: 1rem;
        }

        .login label {
            background-color: var(--loginLabelBackgroundColor);
            border-bottom-right-radius: 0;
            border-top-right-radius: 0;
            padding-inline: 1.25rem;
        }

        .login input[type="password"],
        .login input[type="text"] {
            background-color: var(--loginInputBackgroundColor);
            border-bottom-left-radius: 0;
            border-top-left-radius: 0;
        }

        .login input[type="password"]:focus,
        .login input[type="password"]:hover,
        .login input[type="text"]:focus,
        .login input[type="text"]:hover {
            background-color: var(--loginInputHoverBackgroundColor);
        }

        .login input[type="submit"] {
            background-color: var(--loginSubmitBackgroundColor);
            color: var(--loginSubmitColor);
            font-weight: 700;
            text-transform: uppercase;
        }

        .login input[type="submit"]:focus,
        .login input[type="submit"]:hover {
            background-color: var(--loginSubmitHoverBackgroundColor);
        }

        /* modules/text.css */

        p {
            margin-block: 1.5rem;
        }

        .text--center {
            text-align: center;
        }


        /* form đang nhâp đang kí */
        .show_form{
            display: none;
        }
        .nav_div_link{
            display: flex;
            justify-content:center;
            align-items: center;
            margin: 10px;

        }
        .nav__list{
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        /*css product*/
        .product{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 300px;
            border: 1px #08a43b solid;
            margin: 10px;
        }
        #product{
            height: 500px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .description{
            width: 250px;
            height:100% ;

        }

        .img{
            width: 70%;
            height: 50%;
        }
        /*===========productDetail==========*/
        .productDetail{
            display: flex;

        }
        /*=========gio hang=========*/

        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');

        body {
            font-family: 'Manrope', sans-serif;

        }

        .size span {
            font-size: 11px;
        }

        .color span {
            font-size: 11px;
        }

        .product-deta {
            margin-right: 70px;
        }

        .gift-card:focus {
            box-shadow: none;
        }

        .pay-button {
            color: #fff;
        }

        .pay-button:hover {
            color: #fff;
        }

        .pay-button:focus {
            color: #fff;
            box-shadow: none;
        }

        .text-grey {
            color: #a39f9f;
        }

        .qty i {
            font-size: 11px;
        }



        /*=========login=========*/
        @use postcss-preset-env {
            stage: 0;
        }

        /* config.css */

        :root {
            --baseColor: #606468;
        }

        /* helpers/align.css */

        .align {
            display: grid;
            place-items: center;
        }

        .grid {
            inline-size: 90%;
            margin-inline: auto;
            max-inline-size: 20rem;
        }

        /* helpers/hidden.css */

        .hidden {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
        }

        /* helpers/icon.css */

        :root {
            --iconFill: var(--baseColor);
        }

        .icons {
            display: none;
        }

        .icon {
            block-size: 1em;
            display: inline-block;
            fill: var(--iconFill);
            inline-size: 1em;
            vertical-align: middle;
        }

        /* layout/base.css */

        :root {
            --htmlFontSize: 100%;

            --bodyBackgroundColor: #2c3338;
            --bodyColor: var(--baseColor);
            --bodyFontFamily: "Open Sans";
            --bodyFontFamilyFallback: sans-serif;
            --bodyFontSize: 0.875rem;
            --bodyFontWeight: 400;
            --bodyLineHeight: 1.5;
        }

        * {
            box-sizing: inherit;
        }

        html {
            box-sizing: border-box;
            font-size: var(--htmlFontSize);
        }

        body {
            background-color: var(--bodyBackgroundColor);
            color: var(--bodyColor);
            font-family: var(--bodyFontFamily), var(--bodyFontFamilyFallback);
            font-size: var(--bodyFontSize);
            font-weight: var(--bodyFontWeight);
            line-height: var(--bodyLineHeight);
            margin: 0;
            min-block-size: 100vh;
        }

        /* modules/anchor.css */

        :root {
            --anchorColor: #eee;
        }

        a {
            color: var(--anchorColor);
            outline: 0;
            text-decoration: none;
        }

        a:focus,
        a:hover {
            text-decoration: underline;
        }

        /* modules/form.css */

        :root {
            --formGap: 0.875rem;
        }

        input {
            background-image: none;
            border: 0;
            color: inherit;
            font: inherit;
            margin: 0;
            outline: 0;
            padding: 0;
            transition: background-color 0.3s;
        }

        input[type="submit"] {
            cursor: pointer;
        }

        .form {
            display: grid;
            gap: var(--formGap);
        }

        .form input[type="password"],
        .form input[type="text"],
        .form input[type="submit"] {
            inline-size: 100%;
        }

        .form__field {
            display: flex;
        }

        .form__input {
            flex: 1;
        }

        /* modules/login.css */

        :root {
            --loginBorderRadus: 0.25rem;
            --loginColor: #eee;

            --loginInputBackgroundColor: #3b4148;
            --loginInputHoverBackgroundColor: #434a52;

            --loginLabelBackgroundColor: #363b41;

            --loginSubmitBackgroundColor: #ea4c88;
            --loginSubmitColor: #eee;
            --loginSubmitHoverBackgroundColor: #d44179;
        }

        .login {
            color: var(--loginColor);
        }

        .login label,
        .login input[type="text"],
        .login input[type="password"],
        .login input[type="submit"] {
            border-radius: var(--loginBorderRadus);
            padding: 1rem;
        }

        .login label {
            background-color: var(--loginLabelBackgroundColor);
            border-bottom-right-radius: 0;
            border-top-right-radius: 0;
            padding-inline: 1.25rem;
        }

        .login input[type="password"],
        .login input[type="text"] {
            background-color: var(--loginInputBackgroundColor);
            border-bottom-left-radius: 0;
            border-top-left-radius: 0;
        }

        .login input[type="password"]:focus,
        .login input[type="password"]:hover,
        .login input[type="text"]:focus,
        .login input[type="text"]:hover {
            background-color: var(--loginInputHoverBackgroundColor);
        }

        .login input[type="submit"] {
            background-color: var(--loginSubmitBackgroundColor);
            color: var(--loginSubmitColor);
            font-weight: 700;
            text-transform: uppercase;
        }

        .login input[type="submit"]:focus,
        .login input[type="submit"]:hover {
            background-color: var(--loginSubmitHoverBackgroundColor);
        }

        /* modules/text.css */

        p {
            margin-block: 1.5rem;
        }

        .text--center {
            text-align: center;
        }
    </style>
</head>
<body>
<header style="Width: 100%;height:100px;background-color:rgb(219, 189, 20);font-size:20px">

    <div class="nav__list" style="color:#007bff">
        <div class="nav_div_link">
            <a class="nav__link active-link" href="/home" onclick="route()">TRANG CHỦ</a>
        </div>
        <div class="nav_div_link ">
            <a class="nav__link " >GIỚI THIỆU</a>
        </div>
        <div class="nav_div_link">
            <a class="nav__link" href="/product" >Sản Phẩm</a>
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
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <a href="/login">Đăng Nhập</a>
        </c:if>
    </div>

</header>
<section style="display: flex; justify-content: space-around;align-items: center ; background: #ffffff">
    <a href="product" style="font-size: 25px ; font-weight: 700">Tất cả sản phẩm</a>

    <c:forEach var="item" items="${catalog}">
        <a style="font-size: 22px; margin: 20px 0 ; color: blueviolet;" href="catalog?catalogId=${item.catalogId}">${item.catalogName}
        </a>
    </c:forEach>
</section>
<aside class="row " style="background: #ffffff" >
    <c:forEach var="item" items="${products}">
        <div class="col-4" id="product">
            <img class="img" src="${item.url}" alt="hình ảnh">
            <h3 style="font-size: 20px ; margin: 10px">${item.nameProduct}</h3>
            <button style="color:#fff; width: 100px;height: 35px ; background: red">
                <span>${item.price} Vnđ</span>
            </button>
            <div style="display: flex; justify-content: space-evenly; align-items: center ; width: 100% ; margin-top: 10px">
                <a style="color:red" href="productDetail?productId=${item.id}">
                    Xem chi tiết
                </a>
                <button class="addCart"><a href="cart/add-product?productId=${item.id}">Thêm vào giỏ hàng</a>
                </button>
            </div>
        </div>
    </c:forEach>
</aside>

<footer class="text-center text-white" style="background-color: #f1f1f1;width: 100%">
    <!-- Grid container -->

    <div class="container pt-4">
        <!-- Section: Social media -->
        <section class="mb-4">
            <!-- Facebook -->
            <a
                    class="btn btn-link btn-floating btn-lg  m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class=" text-dark fab fa-facebook-f"></i
            ></a>

            <!-- Twitter -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-twitter"></i
            ></a>

            <!-- Google -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-google"></i
            ></a>

            <!-- Instagram -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-instagram"></i
            ></a>

            <!-- Linkedin -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-linkedin"></i
            ></a>
            <!-- Github -->
            <a
                    class="btn btn-link btn-floating btn-lg text-dark m-1"
                    href="#!"
                    role="button"
                    data-mdb-ripple-color="dark"
            ><i class="fab fa-github"></i
            ></a>
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

</body>
</html>
