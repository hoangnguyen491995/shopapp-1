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
</head>
<body>
<header style="Width: 100%;height:100px;background-color:rgb(219, 189, 20);font-size:20px">
    <div class="nav__list"  style="color:#007bff">
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
 <main style="display: flex;flex-direction: column; justify-content: center ; align-items: center ; margin: 20px">
     <h1>Chi tiết sản phẩm</h1>
     <aside style="display: flex;flex-direction: column" >
         <c:forEach var="item" items="${products}">
             <div class="productDetail">

                 <div style="display: flex; justify-content: space-evenly; align-items: center ; margin: 30px">
                     <div style="display: flex;flex-direction: column; justify-content:space-between ">
                         <div>
                             <h2  style="font-size: 20px ; margin: 50px 0 0 50px"> Tên sản phẩm : ${item.nameProduct}</h2>
                             <h3 style="margin: 0 0 0 50px">Giá bán : ${item.price} Vnđ</h3>
                         </div>

                         <h5 style="margin: 50px 0 0 50px"  class="description">Mô tả cho sản phẩm : ${item.description}</h5>
                         <button style="height: 35px; width: 250px ;margin: 0 0 0 50px" >
                             <a style="color:red" href="product">
                                 Quay lại danh sách sản phẩm
                             </a>
                         </button>
                         <button style="height: 35px; width: 250px ;margin: 0 0 0 50px" class="addCart">Thêm vào giỏ hàng
                         </button>
                     </div>

                 </div>
                 <img class="imgDetail" src="${item.url}" alt="hình ảnh">
             </div>
         </c:forEach>
     </aside>
 </main>

</div>

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
<!-- End of .container -->
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
