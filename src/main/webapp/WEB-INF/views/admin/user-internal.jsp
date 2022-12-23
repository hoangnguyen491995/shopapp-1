<%-- Created by IntelliJ IDEA. User: hoangnd3 Date: 11/24/2022 Time: 11:10 AM To change this template use File |
    Settings | File Templates. --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>Người Dùng nội Bộ</title>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
            <style>
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

                .admin_content {
                    color: #566787;
                    background: #f5f5f5;
                    font-family: 'Varela Round', sans-serif;
                    font-size: 13px;
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

                table.table tr th,
                table.table tr td {
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

                .pagination li.active a,
                .pagination li.active a.page-link {
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

                .custom-checkbox input[type="checkbox"]:checked+label:after {
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

                .custom-checkbox input[type="checkbox"]:checked+label:before {
                    border-color: #03A9F4;
                    background: #03A9F4;
                }

                .custom-checkbox input[type="checkbox"]:checked+label:after {
                    border-color: #fff;
                }

                .custom-checkbox input[type="checkbox"]:disabled+label:before {
                    color: #b8b8b8;
                    cursor: auto;
                    box-shadow: none;
                    background: #ddd;
                }

                /* Modal styles */
                .modal .modal-dialog {
                    max-width: 400px;
                }

                .modal .modal-header,
                .modal .modal-body,
                .modal .modal-footer {
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

                th {
                    width: 300px;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                }
            </style>
            <script>
                $(document).ready(function () {
                     
                    // Select/Deselect checkboxes
                    var checkbox = $('table tbody input[type="checkbox"]');
                    $("#selectAll").click(function () {
                        if (this.checked) {
                            checkbox.each(function () {
                                this.checked = true;
                            });
                        } else {
                            checkbox.each(function () {
                                this.checked = false;
                            });
                        }
                    });
                    checkbox.click(function () {
                        if (!this.checked) {
                            $("#selectAll").prop("checked", false);
                        }
                    });
                });
            </script>
        </head>

        <body>
            <div class="admin_dashboard">
                <div class="item_dashboard">
                    <img src="../../../assets/img-icon/person-icon.png" alt="">
                    <br>
                    <input style="outline: none;border:none;background-color:#ebef6d" id="myAccount_admin">
                    </input>
                </div>
                <h3 class="item_dashboard">Bảng Điều Khiển</h3>
                <a class="item_dashboard" href="/admin/internal"> Người Dùng Nội Bộ </a>
                <a class="item_dashboard" href="/admin/register"> NGười Dùng Đăng Ký</a>
                <a class="item_dashboard" href="/admin/contact"> Thông Tin Liên Hệ </a>
                <a class="item_dashboard" href="/admin/receive"> Danh Sách Email Nhận Tin</a>
                <p class="logout_internal item_dashboard "> Đăng xuất</p>
            </div>
            <div class="container-xl">
                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h2>Quản Lí <b> Người Dùng Nội Bộ</b></h2>
                                </div>
                                <div id="create" class="col-sm-6">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                            class="material-icons">&#xE147;</i> <span>Thêm Người Dùng Nội bộ</span></a>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>Số Điên Thoại</th>
                                    <th>Hành Động</th>
                                </tr>
                            </thead>
                            <tbody class="list_internal">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- ========add new=========== -->
            <div id="addEmployeeModal" class="modal fade addEmployeeModal_internal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">
                                <h4 class="modal-title">Thêm Người Dùng Nội Bộ</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Họ Và Tên</label>
                                    <input id="create_name_internal" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Số Điện Thoại</label>
                                    <input type="number" class="form-control" id="create_phone_internal" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" id="create_email_internal" type="email"
                                        required></input>
                                </div>
                                <div class="form-group">
                                    <label>Mật Khẩu</label>
                                    <input id="create_pass_internal" type="password" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label> Nhập Lại Mật Khẩu</label>
                                    <input id="create_pass2_internal" type="password" class="form-control" required>
                                </div>

                                <ul id="add_internal_error" style="color:red;">
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                                <span style="padding: 5px 5px ;" class="btn btn-success" id="Add_user"> Thêm</span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ========edit=========== -->
            <div id="editEmployeeModal" class="modal fade editEmployeeModal_internal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">
                                <h4 class="modal-title">Sửa Thông Tin Người Dùng Nội Bộ</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input disabled id="edit_email" type="email" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Họ Và Tên</label>
                                    <input id="edit_name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Số Điện Thoại</label>
                                    <input id="edit_phone" type="text" class="form-control" required>
                                </div>
                                <ul style="color:red" id="edit_internal_error">
                                </ul>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                                <span id="edit_user" class="btn btn-info"> Lưu</span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Delete Modal HTML -->
            <div id="deleteEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">
                                <h4 class="modal-title">Xóa Người Dùng Nội Bộ</h4>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p>Bạn có chắc chắn muốn xóa các Bản ghi này không?</p>
                                <p class="text-warning"><small>Hành động này không thể được hoàn tác.</small></p>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                                <input id="delete_internal" class="btn btn-danger" value="Xóa">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ==========detail========== -->
            <div id="editEmployeeModal_detail" class="modal fade_detail ">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header"></div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Họ Và Tên: </label>
                                    <label id="detailContactId" for=""></label>
                                </div>
                                <div class="form-group">
                                    <label>email: </label>
                                    <label id="detailDateCreate" for=""></label>
                                </div>
                                <div class="form-group">
                                    <label>Số Điên Thoại: </label>
                                    <label id="detailName" for=""></label>
                                </div>
                                <div class="form-group">
                                    <label>Thời Gian Tạo:</label>
                                    <label id="detailsEmail" for=""></label>
                                </div>
                                <div class="form-group">
                                    <label>Thời Gian Sửa Gần Nhất:</label>
                                    <label id="detailMessage"></label>
                                </div>
                                <div class="form-group">
                                    <label>kiểu người dùng: </label>
                                    <label id="detailPhone"></label>
                                </div>
                                <div class="form-group">
                                    <label>ID: </label>
                                    <label id="detailId"></label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
                integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
                crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="/js/check-user-type.js"></script>
            <script src="/js/user-internal.js"></script>
            <script src="/js/validator.js"></script>
            <script>
                Validator({
                    redirect:"internal",
                    api:"http://localhost:8085/admin/listInternalUser",
                    formAdd:".addEmployeeModal_internal",
                    listErrorAdd:"#add_internal_error",
                    Add: "#Add_user",
                    nameAdd: " #create_name_internal",       
                    emailAdd: "#create_email_internal ",
                    phoneAdd: "#create_phone_internal",
                    passAdd: "#create_pass_internal ",  
                    pass2Add: "#create_pass2_internal " ,
                    formEdit: ".editEmployeeModal_internal",
                    listErrorEdit:"#edit_internal_error",
                    edit: "#edit_user",
                    emailEdit:"#edit_email",
                    nameEdit: "#edit_name",                         
                    phoneEdit: "#edit_phone",  
                },)
            </script>
        </body>

        </html>