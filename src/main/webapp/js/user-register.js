var userRegister = 'http://localhost:8085/admin/listUser'

function start() {
    var name_Account = localStorage.getItem("name")
    console.log(name_Account)
    $("#myAccount_admin_register").val(name_Account)
    getUserRegister(renderUserRegister)
}
start()

function getUserRegister(callback) {
    fetch(userRegister, {
        headers: {
            Authorization: "Bearer " + localStorage.token,
        }
    })
        .then(function (res) {
            console.log(res);
            return res.json()
        })
        .then(callback)
}

function renderUserRegister(registers) {
    console.log(registers)
    var class_register = document.querySelector('.list_user_register')
    var htmls = registers.map(function (register, i) {
        return `
                    <tr>
                        <td>${register.fullName}</td>
                        <td>${register.email}</td>
                        <td>${register.phone}</td>
                        <td hidden>${register.createdDate}</td>
                        <td hidden>${register.lastUpdate}</td>
                        <td hidden>${register.userType} </td>
                        <td hidden>${register.userID}</td>
                        <td>
                           <a onClick="editHandler(${i})" href="#editEmployeeModal_detail_register" class="edit" data-toggle="modal" > Xem Chi Tiết </a>      
                            <button href="#editEmployeeModal" onclick="handleEdit('${register.fullName}','${register.email}','${register.phone}','${register.lastUpdate}')" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                            <button href="#deleteEmployeeModal" onclick="handleDelete('${register.email}')" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></button>
                        </td>
                    </tr>
                  `
    })
    class_register.innerHTML = htmls.join("")
}

function editHandler(params) {
    var tr = $('tr')[++params];
    $('#detailContactId').html($($(tr).find('td')[0]).html());
    $('#detailDateCreate').html($($(tr).find('td')[1]).html().split('GMT')[0]);
    $('#detailName').html($($(tr).find('td')[2]).html());
    $('#detailsEmail').html($($(tr).find('td')[3]).html());
    $('#detailMessage').html($($(tr).find('td')[4]).html());
    $('#detailPhone').html($($(tr).find('td')[5]).html());
    $('#detailId').html($($(tr).find('td')[6]).html());
}

function DeleteUserRegister(email) {
    console.log(email)
    fetch(userRegister, {
        method: 'DELETE',
        headers: {
            Authorization: "Bearer " + localStorage.token,
        },
        body:{email:email}
    })
        .then(function (res) {
           // location.replace("register")
            return res.json()
        })
}
function EditUserRegister(email) {
    var name = $("#edit_name_register").val();
    var phone = $("#edit_phone_register").val();
    fetch(userRegister, {
        method: 'PUT',
        headers: {
            "Content-Type": "application/json",
            Authorization: "Bearer " + localStorage.token,
        },
        body: JSON.stringify(
            {
                fullName: name,
                phone: phone,
                email: email,
            }
        )
    })
        .then(function (res) {
            console.log(res);
            Edit_error_Array = []
            location.replace("register")
            return res.json()
        })
        .catch((error) => {
            Edit_error_Array = []
        })

}

function handleEdit(name, email, phone, lastUpdate) {
    console.log(email);
    console.log(phone);
    console.log(lastUpdate);
    $("#edit_name_register").val(name)
    $("#edit_email_register").val(email)
    $("#edit_phone_register").val(phone)
    $("#edit_lastUpdate").val(lastUpdate)
    var edit_userRegister = document.querySelector('#edit_user_register')
}

function handleDelete(email) {
    console.log(email);
    var delete_internal = document.querySelector('#delete_resgister')
    delete_internal.onclick = function () {
        DeleteUserRegister(email)
    }
}


//  =======logout==========
var logout = document.querySelector('.logout_internal')
logout.onclick = function () {
    localStorage.removeItem("token")
    location.replace("login");

}


