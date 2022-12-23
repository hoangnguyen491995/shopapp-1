<%--
  Created by IntelliJ IDEA.
  User: hoangnd3
  Date: 11/24/2022
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/index.css" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <title>Đăng Nhập</title>
</head>
<body>
<div id="wrapper">
    <form action="" id="form-login">
        <h1 class="form-heading">Đăng nhập</h1>
        <div class="form-group">
            <i class="far fa-user"></i>
            <input  id="admin_login_email" type="text" class="form-input" placeholder="Email">
        </div>
        <div class="form-group">
            <i class="fas fa-key"></i>
            <input id="admin_login_password" type="password" class="form-input" placeholder="Mật khẩu">
        </div>
        </span>
        <ul style="color: rgb(237, 214, 11);" id="login_error">

        </ul>
        <input value="Đăng nhập" class="form-submit" id="submit-form">
    </form>
</div>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous">
</script>

<script src="/js/admin-login.js"></script>

</body>
</html>