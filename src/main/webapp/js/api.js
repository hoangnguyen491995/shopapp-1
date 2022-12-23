// Pattern for regex
var emailRegex =/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
var nameRegex = /^[a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ ,.'-]+$/i;
var phoneRegex = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/;
var passRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$/i;

// ajax for post api register news
$(document).ready(function () {
    $("#btnRegisterNews").click(function (e) {
        e.preventDefault();
        var email = $("#emailRegisterNews").val();
        if (!emailRegex.test(email)) {
            alert("Địa chỉ email không hợp lệ")
            return false;
        };
        $.ajax({
            url: "http://localhost:8085/registerNews",
            type: "POST",
            headers: {
                "Content-Type": "text/plain",
            },
            data: email,
            success: function (response) {
                alert("Đăng ký thành công");
            },
            error: function (xhr, status) {
                alert("Đăng ký thất bại");
            },
        });
    });
});

// ajax for post api register contact
$(document).ready(function () {
    $("#contact_form_button").click(function (e) {
        e.preventDefault();
        var name = $("#contact_form_input_name")
        var phone = $("#contact_form_input_phone");
        var email = $("#contact_form_input_email");
        var content = $("#contact_form_input_content");

        if (!nameRegex.test(name.val())) {
            alert("Tên không hợp lệ")
            name.focus();
            return false;
        };

        if (!phoneRegex.test(phone.val())) {
            alert("Số điện thoại không hợp lệ")
            phone.focus();
            return false;
        };

        if (!emailRegex.test(email.val())) {
            alert("Địa chỉ email không hợp lệ")
            email.focus();
            return false;
        };
        
        if (!content.val()) {
            alert("Lời nhắn không được để trống")
            content.focus();
            return false;
        };

        $.ajax({
            url: "http://localhost:8085/contact",
            type: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            data: JSON.stringify({
                "name": name.val(),
                "phone": phone.val(),
                "email": email.val(),
                "message": content.val()
            }),

            success: function (response) {
                alert("Send success");
            },
            error: function (xhr, status) {
                alert("Send fail");
            },
        });
    });
});
// ajax for post api register account
$(document).ready(function () {
    $("#btnRegisterUser").click(function (e) {
        e.preventDefault();
        var name = $("#myAccount_form_item_register_name");
        var phone = $("#myAccount_form_item_register_phone");
        var email = $("#myAccount_form_item_register_email");
        var pass = $("#myAccount_form_item_register_pass");
        var pass2 = $("#myAccount_form_item_register_pass2");

        if (!nameRegex.test(name.val())) {
            alert("Họ và tên không hợp lệ")
            name.focus();
            return false;
        };

        if (!phoneRegex.test(phone.val())) {
            alert("Số điện thoại không hợp lệ");
            phone.focus();
            return false;
        };

        if (!emailRegex.test(email.val())) {
            alert("Địa chỉ email không hợp lệ");
            email.focus();
            return false;
        };

        if (!passRegex.test(pass.val())) {
            alert("Mật khẩu phải có ít nhất 8 ký tự");
            pass.focus();
            return false;
        };

        if (pass.val() != pass2.val()) {
            alert("Nhập lại mật khâu không chính xác");
            pass2.focus();
            return false;
        };

            $.ajax({
                url: "http://localhost:8085/register",
                type: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                data: JSON.stringify({
                    fullName: name.val(),
                    phone: phone.val(),
                    email: email.val(),
                    password: pass.val(),
                }),

                success: function (response) {
                    alert("Đăng ký thành công");
                },
                error: function (xhr, status) {
                    alert("Đăng ký thất bại");
                },
            });
    });
});

// ajax for post api login account
$(document).ready(function () {
    
    $("#btnLoginUser").click(function (e) {
        e.preventDefault();
        var email = $("#myAccount_form_item_login_email");
        var pass = $("#myAccount_form_item_login_pass");

        if (!emailRegex.test(email.val())) {
            alert("Địa chỉ email không hợp lệ")
            email.focus();
            return false;
        };

        if (!passRegex.test(pass.val())) {
            alert("Đăng nhập thất bại")
            return false;
        }

        $.ajax({
            url: "http://localhost:8085/login",
            type: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            data: JSON.stringify({
                email: email.val(),
                password: pass.val(),
            }),

            success: function (response) {
                localStorage.token = response.accessToken;
                alert("Đăng nhập thành công");
            },
            error: function (xhr, status) {
                alert("Đăng nhập thất bại");
            },
        });
    });
});


