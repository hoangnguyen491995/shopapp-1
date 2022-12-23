// get list contact-content
var name_Account = localStorage.getItem("name")
console.log(name_Account)
$("#myAccount_admin_contact").val(name_Account)

$(document).ready(function () {
  $.ajax({
    url: "http://localhost:8085/admin/listContact",
    type: "GET",
    headers: {
      Authorization: "Bearer " + localStorage.token,
    },

    success: function (response) {
      $.map(response, function (val, i) {
        $(".body_table").append(` <tr> 
                <td hidden>${val.contactID}</td>
                <td hidden>${new Date(val.createDate)}</td>
                <td>${val.name}</td>
                <td>${val.email}</td>
                <td class="contact_content">${val.message}</td>
                <td>${val.phone}</td>
                <td>
                    <a onClick="editHandler(${i})" href="#editEmployeeModal" class="edit" data-toggle="modal" > Xem Chi Tiết </a>
                </td>
            </tr>`);
      });
    },
    error: function (xhr, status) {
      // switch (xhr.status) {
      //   case 403:
      //     $("table").html("Don't have the authority.");
      //     break;
      //   default:
      //     alert("Not found");
      //     break;
      // }
    },
  });
});
function editHandler(params) {
  var tr = $("tr")[++params];
  $("#detailContactId").html($($(tr).find("td")[0]).html());
  $("#detailDateCreate").html($($(tr).find("td")[1]).html().split('GMT')[0]);
  $("#detailName").html($($(tr).find("td")[2]).html());
  $("#detailsEmail").html($($(tr).find("td")[3]).html());
  $("#detailMessage").html($($(tr).find("td")[4]).html());
  $("#detailPhone").html($($(tr).find("td")[5]).html());
}

//  =======logout==========
var logout = document.querySelector('.logout_internal')
logout.onclick = function(){
  localStorage.removeItem("token")
  location.replace("login");
  
}
