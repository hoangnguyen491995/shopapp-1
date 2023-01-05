<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: hoangnd3
  Date: 12/24/2022
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lí người dùng </title>
    <style>
        a {
            text-decoration: none;
        }

        body {
            display: flex;
            justify-content: space-evenly;
        }

        .admin_dashboard {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            background-color: #ebef6d;
            padding: 20px;
        }

        .item_dashboard {
            margin-top: 20px;
        }

        .table-responsive {
            margin: 30px 0;
        }

        .table-wrapper {
            background: #fff;
            padding: 20px 25px;
            border-radius: 3px;
            min-width: 1000px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
        }

        .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            min-width: 100%;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }

        .table-title h2 {
            margin: 5px 0 0;
            font-size: 24px;
        }

        .table-title .btn-group {
            float: right;
        }

        .table-title .btn {
            color: #fff;
            float: right;
            font-size: 13px;
            border: none;
            min-width: 50px;
            border-radius: 2px;
            border: none;
            outline: none !important;
            margin-left: 10px;
        }

        .table-title .btn i {
            float: left;
            font-size: 21px;
            margin-right: 5px;
        }

        .table-title .btn span {
            float: left;
            margin-top: 2px;
        }

        table.table tr th, table.table tr td {
            border-color: #e9e9e9;
            padding: 12px 15px;
            vertical-align: middle;
        }

        table.table tr th:first-child {
            width: 60px;
        }

        table.table tr th:last-child {
            width: 100px;
        }

        table.table-striped tbody tr:nth-of-type(odd) {
            background-color: #fcfcfc;
        }

        table.table-striped.table-hover tbody tr:hover {
            background: #f5f5f5;
        }

        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }

        table.table td:last-child i {
            opacity: 0.9;
            font-size: 22px;
            margin: 0 5px;
        }

        table.table td a {
            font-weight: bold;
            color: #566787;
            display: inline-block;
            text-decoration: none;
            outline: none !important;
        }

        table.table td a:hover {
            color: #2196F3;
        }

        table.table td a.edit {
            color: #FFC107;
        }

        table.table td a.delete {
            color: #F44336;
        }

        table.table td i {
            font-size: 19px;
        }

        table.table .avatar {
            border-radius: 50%;
            vertical-align: middle;
            margin-right: 10px;
        }

        .pagination {
            float: right;
            margin: 0 0 5px;
        }

        .pagination li a {
            border: none;
            font-size: 13px;
            min-width: 30px;
            min-height: 30px;
            color: #999;
            margin: 0 2px;
            line-height: 30px;
            border-radius: 2px !important;
            text-align: center;
            padding: 0 6px;
        }

        .pagination li a:hover {
            color: #666;
        }

        .pagination li.active a, .pagination li.active a.page-link {
            background: #03A9F4;
        }

        .pagination li.active a:hover {
            background: #0397d6;
        }

        .pagination li.disabled i {
            color: #ccc;
        }

        .pagination li i {
            font-size: 16px;
            padding-top: 6px
        }

        .hint-text {
            float: left;
            margin-top: 10px;
            font-size: 13px;
        }

        /* Custom checkbox */
        .custom-checkbox {
            position: relative;
        }

        .custom-checkbox input[type="checkbox"] {
            opacity: 0;
            position: absolute;
            margin: 5px 0 0 3px;
            z-index: 9;
        }

        .custom-checkbox label:before {
            width: 18px;
            height: 18px;
        }

        .custom-checkbox label:before {
            content: '';
            margin-right: 10px;
            display: inline-block;
            vertical-align: text-top;
            background: white;
            border: 1px solid #bbb;
            border-radius: 2px;
            box-sizing: border-box;
            z-index: 2;
        }

        .custom-checkbox input[type="checkbox"]:checked + label:after {
            content: '';
            position: absolute;
            left: 6px;
            top: 3px;
            width: 6px;
            height: 11px;
            border: solid #000;
            border-width: 0 3px 3px 0;
            transform: inherit;
            z-index: 3;
            transform: rotateZ(45deg);
        }

        .custom-checkbox input[type="checkbox"]:checked + label:before {
            border-color: #03A9F4;
            background: #03A9F4;
        }

        .custom-checkbox input[type="checkbox"]:checked + label:after {
            border-color: #fff;
        }

        .custom-checkbox input[type="checkbox"]:disabled + label:before {
            color: #b8b8b8;
            cursor: auto;
            box-shadow: none;
            background: #ddd;
        }

        /* Modal styles */
        .modal .modal-dialog {
            max-width: 400px;
        }

        .modal .modal-header, .modal .modal-body, .modal .modal-footer {
            padding: 20px 30px;
        }

        .modal .modal-content {
            border-radius: 3px;
            font-size: 14px;
        }

        .modal .modal-footer {
            background: #ecf0f1;
            border-radius: 0 0 3px 3px;
        }

        .modal .modal-title {
            display: inline-block;
        }

        .modal .form-control {
            border-radius: 2px;
            box-shadow: none;
            border-color: #dddddd;
        }

        .modal textarea.form-control {
            resize: vertical;
        }

        .modal .btn {
            border-radius: 2px;
            min-width: 100px;
        }

        .modal form label {
            font-weight: normal;
        }
    </style>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
<script>

</script>
<div class="admin_dashboard">
    <div class="item_dashboard">
        ${pageContext.request.userPrincipal.name}
        <img src="../../../assets/img-icon/person-icon.png" alt="">
        <br>
        <input style="outline: none;border:none;background-color:#ebef6d ;" id="myAccount_admin_receive"/>
    </div>
    <h3 class="item_dashboard">Bảng Điều Khiển</h3>
    <a class="item_dashboard" href="/admin/product"> Sản phẩm </a>
    <a class="item_dashboard" href="/admin/user"> Người Dùng </a>
    <a class="item_dashboard" href="/admin/catalog"> Danh mục sản phẩm </a>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <a href="#" onclick="document.forms['logoutForm'].submit()">Đăng xuất</a>
        </c:if>
    </c:if>
</div>

<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Quản lí <b>người dùng</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                class="material-icons">&#xE147;</i> <span>Thêm người dùng</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID người dùng</th>
                    <th>Tên người dùng</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <c:forEach var="item" items="${users}">
                    <tbody>
                    <tr>
                        <td> ${item.userId}</td>
                        <td> ${item.username}</td>
                        <td> ${item.phone} </td>
                        <td> ${item.email}</td>
                        <td>
                            <a onclick='return editFormUser("${item.userId}","${item.username}","${item.phone}","${item.email}")'
                               href="#editEmployeeModal" class="edit"
                               data-toggle="modal"><i
                                    class="material-icons" data-toggle="tooltip"
                                    title="Edit">&#xE254;</i>
                            </a>

                            <a onclick="return deleteForm(${item.userId})" href="#deleteEmployeeModal" class="delete"
                               data-toggle="modal"><i class="material-icons"
                                                      data-toggle="tooltip"
                                                      title="Delete">&#xE872;</i></a>
                            <a onclick='return DetailFormUser("${item.userId}","${item.username}","${item.phone}","${item.email}")'
                               href="#detailUserEmployeeModal" data-toggle="modal">
                                Xem chi tiết
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form:form method="post" modelAttribute="user" action="user/add">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm người dùng</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên</label>
                        <form:input path="username" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <form:input path="email" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <form:input path="phone" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu</label>
                        <form:input path="password" type="password" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Nhập lại mật khẩu</label>
                        <form:input path="passwordConfirm" type="password" class="form-control"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                    <input type="submit" class="btn btn-success" value="Thêm">
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form:form>

        </div>
    </div>
</div>

<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form:form method="post" modelAttribute="user" action="user/update">
                <div class=" modal-header ">
                    <h4 class="modal-title">Cập nhập thông tin người dùng</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID người dùng</label>
                        <form:input id="editIDUser" path="userId" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Tên người dùng</label>
                        <form:input id="editNameUser" path="username" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <form:input id="editEmailUser" path="email" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Số điện thoại</label>
                        <form:input id="editPhoneUser" path="phone" type="text" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu</label>
                        <form:input path="password" type="password" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label> Nhập lại mật khẩu</label>
                        <form:input path="passwordConfirm" type="password" class="form-control"
                        />
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                    <input type="submit" class="btn btn-info" value="Lưu">
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form:form>
        </div>
    </div>
</div>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title"> Xóa sản phẩm </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn có chắc chắn muốn xóa các Bản ghi này không?</p>
                    <p class="text-warning">
                        <small>Hành động này không thể được hoàn tác.</small>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <a id="deleteUser" type="submit" class="btn btn-danger"> Delete</a>
                </div>
            </form>
        </div>
    </div>
</div>
<%--===xem chi tiết sản phẩm ====--%>
<div id="detailUserEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title" Thông tin chi tiết về sản phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID người dùng : </label>
                        <label id="UserIdDetail"></label>
                    </div>
                    <div class="form-group">
                        <label id="nameProduct">Tên người dùng : </label>
                        <label id="nameUserDetail"> </label>
                    </div>
                    <div class="form-group">
                        <label> Số điện thoại : </label>
                        <label id="phoneUserDetail"> </label>

                    </div>
                    <div class="form-group">
                        <label>Email :</label>
                        <label id="emailUserDetail"></label>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-default" data-dismiss="modal"
                           value="Quay lại"/>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>
<script>
    function deleteForm(id) {
        document.getElementById("deleteUser").setAttribute("href", "/admin/user/delete?userId=" + id);
    }

    function DetailFormUser(id, name, phone, email) {
        document.getElementById("UserIdDetail").innerHTML = id;
        document.getElementById("nameUserDetail").innerHTML = name;
        document.getElementById("phoneUserDetail").innerHTML = phone;
        document.getElementById("emailUserDetail").innerHTML = email;
    }

    function editFormUser(id, name, phone, email) {
        document.getElementById("editIDUser").setAttribute("value", id);
        document.getElementById("editNameUser").setAttribute("value", name);
        document.getElementById("editPhoneUser").setAttribute("value", phone);
        document.getElementById("editEmailUser").setAttribute("value", email);


    }
</script>
</body>
</html>
