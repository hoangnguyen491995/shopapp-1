// get list revice email
$(document).ready(function () {
  $.ajax({
    url: "http://localhost:8085/admin/listRegisterNews",
    type: "GET",
    headers: {
      Authorization:
        "Bearer "+localStorage.token,
    },

    success: function (response) {
      $.map(response, function (val, i) {
        $(".body_table").append(` <tr> 
                <td hidden>${val.registerNewsID}</td>
                <td hidden>${new Date(val.registerDate.split("GMT")[0])}</td>
                <td>${i}</td>
                <td>${val.email}</td>
                <td>
                    <a onClick="editHandler(${i})" href="#editEmployeeModal_detail_receive" class="edit" data-toggle="modal" > Xem Chi tiết </a>
                </td>
            </tr>`);
      });
    },
    error: function (xhr, status) {
      switch (xhr.status) {
        case 403:
          $("table").html("Don't have the authority.");
          break;
        default:
          alert("Not found");
          break;
      }
    },
  });
});
var name_Account = localStorage.getItem("name")
console.log(name_Account)
$("#myAccount_admin_receive").val(name_Account)

function editHandler(params) {
  var tr=$('tr')[++params];
  $('#detailId_receive').html($($(tr).find('td')[0]).html());
  $('#detailsEmail_receive').html($($(tr).find('td')[3]).html());
  $('#detailDateCreate_receive').html($($(tr).find('td')[1]).html().split('GMT')[0]);
}
//  =======logout==========
var logout = document.querySelector('.logout_internal')
logout.onclick = function(){
localStorage.removeItem("token")
location.replace("login");

}
