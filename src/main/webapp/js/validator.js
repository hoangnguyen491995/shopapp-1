
var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
var nameRegex = /^[a-zA-Z ]*$/
var phoneRegex = /^\d+$/
var passRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{1,}$/


function EditUserInternal(name_edit_error, phone_edit_error, email, redirect, api) {
    console.log(name_edit_error);
    console.log(phone_edit_error);
    console.log(email);

    fetch(api, {
        method: "PUT",
        headers: {
            "Content-Type": "application/json",
            Authorization: "Bearer " + localStorage.token,
        },
        body: JSON.stringify({
            fullName: name_edit_error,
            phone: phone_edit_error,
            email: email,
        }),
    }).then(function (res) {
        location.replace(redirect);
        console.log(res.fullName);
        localStorage.setItem("name", response.userDomain.fullName);
        return res.json();
    })
        .catch((error) => {

        })
}

function addUserRegister(name_error, phone_error, email_error, pass_error, api, redirect) {

    fetch(api, {
        method: 'POST',
        headers: {
            "Content-Type": "application/json",
            Authorization: "Bearer" + localStorage.token,
        },
        contentType: "application/json; charset=utf-8"
        ,
        body: JSON.stringify(
            {
                fullName: name_error,
                phone: phone_error,
                email: email_error,
                password: pass_error,
            }
        )
    })
        .then(function (res) {
            // location.replace(redirect)
            console.log(res);
            return res.json()
        })
        .then()
}
function Validator(options) {

    var elementAdd = document.querySelector(options.Add)
    var elementNameAdd = document.querySelector(options.nameAdd)
    var elementEmailAdd = document.querySelector(options.emailAdd)
    var elementPhoneAdd = document.querySelector(options.phoneAdd)
    var elementPassAdd = document.querySelector(options.passAdd)
    var elementPass2Add = document.querySelector(options.pass2Add)
    var elementErrorAdd = document.querySelector(options.listErrorAdd)
    var api = options.api
    var redirect = options.redirect
    var name_error = $(options.nameAdd).val();
    var email_error = $(options.emailAdd).val();
    var phone_error = $(options.phoneAdd).val();
    var pass_error = $(options.passAdd).val();


    elementAdd.onclick = function () {

        var ArrayError = []
        if (elementNameAdd.value == "") {
            ArrayError.push({ error: "Vui lòng nhập Tên đầy đủ của bạn !" })
        } else
        {
            if (elementNameAdd.value.length < 8) {
                ArrayError.push({ error: "Tên phải chứa ít nhất 8 kí tự !" })
            }
            if(!nameRegex.set(elementNameAdd.value)){
                ArrayError.push({ error: "Tên không hợp lệ !" })
            }
        } 

        if (elementEmailAdd.value == "") {
            ArrayError.push({ error: "Vui lòng nhập Email !" })
        } else {
            if (!elementEmailAdd.value.includes("@")) {
                ArrayError.push({ error: "email phải chứa kí tự @ !" })
            }
            if (elementEmailAdd.value.split(" ").length > 1) {
                ArrayError.push({ error: "Trong email không được chứa khoảng trắng !" })
            }
            if (elementEmailAdd.value.split("@")[0] == "") {
                ArrayError.push({ error: "Email phải có chứa local-part !" })
            }
            if (!emailRegex.test(elementEmailAdd.value)) {
                ArrayError.push({ error: "Địa chỉ email không hợp lệ !" })
            } 
        }

        if (elementPhoneAdd.value == "") {
            ArrayError.push({ error: "Vui lòng nhập số điện thoại !" })
        } else {
            if (elementPhoneAdd.value < 9) {
                ArrayError.push({ error: " Số điện thoại phải chứa từ 9 đến 16 kí tự !" })
                if (!phoneRegex.test(elementPhoneAdd)) {
                    ArrayError.push({ error: " Số điện thoại chỉ chứa số và không được chứa khoảng trắng!" })
                }
            }
        }

        if (elementPassAdd.value == "") {
            ArrayError.push({ error: "Vui lòng nhập mật khẩu !" })
        } else {
            if (elementPassAdd.value.length < 7) {
                ArrayError.push({ error: "Mật khẩu khẩu chứa tối thiểu 8 kí tự !" })
            }
            if (!passRegex.test(elementPassAdd.value)) {
                ArrayError.push({ error: "Mật khẩu phải chứa chữ,số và không chứa khoảng trắng !" })
            }
        }
        if (elementPass2Add.value == "") {
            ArrayError.push({ error: "Vui lòng xác nhận lại mật khẩu !" })
        } else if (elementPass2Add.value != elementPassAdd.value && elementPassAdd.value != "") {
            ArrayError.push({ error: "Mật Khẩu không khớp !" })
        }

        var htmls = ArrayError.map(function (error) {
            return `
                    <li> ${error.error}</li>
                   `
        })
        elementErrorAdd.innerHTML = htmls.join("")

        if (ArrayError.length == 0) {
            addUserRegister(name_error, phone_error, email_error, pass_error, api, redirect)
        } else if (ArrayError != 0) {
            console.log("có lỗi");
        }

    }
    // edit  
    var elementEdit = document.querySelector(options.edit)
    var elementNameEdit = document.querySelector(options.nameEdit)
    var elementPhoneEdit = document.querySelector(options.phoneEdit)
    var elementErrorEdit = document.querySelector(options.listErrorEdit)

    elementEdit.onclick = function () {

        var name_edit_error = $(options.nameEdit).val();
        var phone_edit_error = $(options.phoneEdit).val();
        var email_edit_error = $(options.emailEdit).val();
      
        var ArrayError_edit = []
        if (elementNameEdit.value == "") {
            ArrayError_edit.push({ error: "Vui lòng nhập Tên đầy đủ của bạn !" })
        }else
        {
            if (elementNameEdit.value.length < 8) {
                ArrayError_edit.push({ error: "Tên phải chứa ít nhất 8 kí tự !" })
            }
            if(!nameRegex.test(elementNameEdit.value)){
                ArrayError_edit.push({ error: "Tên không hợp lệ !" })
            }
        } 

        if (elementPhoneEdit.value == "") {
            ArrayError_edit.push({ error: "Vui lòng nhập Số điện thoại của bạn !" })
        }
        else {
            if (elementPhoneEdit.value < 9) {
                ArrayError_edit.push({ error: " Số điện thoại phải chứa từ 9 đến 16 kí tự !" })
                if (!phoneRegex.test(elementPhoneEdit)) {
                    ArrayError_edit.push({ error: " Số điện thoại chỉ chứa số và không được chứa khoảng trắng!" })
                }
            }
        }
        console.log(ArrayError_edit);
        var htmls_edit = ArrayError_edit.map(function (message) {

            return `
                   <li> ${message.error}</li>
                   `
        })
        elementErrorEdit.innerHTML = htmls_edit.join("")

        if (ArrayError_edit.length == 0) {

            EditUserInternal(name_edit_error, phone_edit_error, email_edit_error, pass_error, api, redirect)
        } else if (ArrayError_edit.length != 0) {
            console.log("có lỗi");
        }
    }

}