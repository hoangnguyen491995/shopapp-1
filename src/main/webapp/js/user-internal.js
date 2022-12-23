var userInternal = "http://localhost:8085/admin/listInternalUser";

function start() {
  var name_Account = localStorage.getItem("name")
  console.log(name_Account)
  $("#myAccount_admin").val(name_Account)
  getUserInternal(renderUserInternal);
}
start();

function getUserInternal(callback) {
  fetch(userInternal, {
    type: "GET",
    headers: {
      Authorization: "Bearer " + localStorage.token,
    },
  })
    .then(function (res) {
      console.log(res);
      return res.json()

    })
    .then(callback);
}

function renderUserInternal(internals) {
  var class_internal = document.querySelector(".list_internal");
  var htmls = internals.map(function (internal, i) {
    return `
                    <tr>
                        <td>${internal.fullName}</td>
                        <td>${internal.email}</td>
                        <td>${internal.phone}</td>
                        <td hidden>${internal.createdDate}</td>
                        <td hidden>${internal.lastUpdate}</td>
                        <td hidden>${internal.userType} </td>
                        <td hidden>${internal.userID}</td>
                        <td>
                        <a onClick="editHandler(${i})" href="#editEmployeeModal_detail" class="edit" data-toggle="modal" > Xem Chi Tiết </a>      
                            <button href="#editEmployeeModal" onclick="handleEdit('${internal.fullName}','${internal.email}','${internal.phone}','${internal.lastUpdate}')" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                            <button href="#deleteEmployeeModal" onclick="handleDelete('${internal.email}')" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></button>
                        </td>
                    </tr>
                  `;
  });
  class_internal.innerHTML = htmls.join("")
}
function editHandler(params) {
  var tr = $("tr")[++params];
  $("#detailContactId").html($($(tr).find("td")[0]).html());
  $("#detailDateCreate").html($($(tr).find("td")[1]).html().split('GMT')[0]);
  $("#detailName").html($($(tr).find("td")[2]).html());
  $("#detailsEmail").html($($(tr).find("td")[3]).html());
  $("#detailMessage").html($($(tr).find("td")[4]).html());
  $("#detailPhone").html($($(tr).find("td")[5]).html());
  $("#detailId").html($($(tr).find("td")[6]).html());
}

function DeleteUserInternal(email) {
  console.log(email);
  fetch(userInternal, {
    method: "DELETE",
    headers: {
      Authorization: "Bearer " + localStorage.token,
    },
    body: { email: email },
  })
    .then(function (res) {
    //  location.replace("internal");
      console.log(res);
      return res.json();
    });
}

function EditUserInternal(email) {
  var name = $("#edit_name").val();
  var phone = $("#edit_phone").val();
  fetch(userInternal, {
    method: "PUT",
    headers: {
      "Content-Type": "application/json",
      Authorization: "Bearer " + localStorage.token,
    },
    body: JSON.stringify({
      fullName: name,
      phone: phone,
      email: email,
    }),
  }).then(function (res) {
    Edit_error_Array = []
    location.replace("internal");
    console.log(res);
    return res.json();
  })
    .catch((error) => {
      Edit_error_Array = []
    })
}
function handleEdit(name, email, phone, lastUpdate) {
  $("#edit_email").val(email);
}

function handleDelete(email) {
  console.log(email);
  var delete_internal = document.querySelector("#delete_internal");
  delete_internal.onclick = function () {
    var emailLocal = localStorage.getItem("email")
    if (emailLocal == email) {
      alert("không thể xóa tài khoản này khi bạn đang dùng nó để đăng nhập !");
    } else {
      DeleteUserInternal(email);
    }
  };
}

// ============logout=========

var logout = document.querySelector('.logout_internal')
logout.onclick = function () {
  localStorage.removeItem("token")
  location.replace("login");
}



