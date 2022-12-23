$(document).ready(function () {
    $.ajax({
      url: "http://localhost:8085/admin/listContact",
      type: "GET",
      headers: {
        Authorization: "Bearer " + localStorage.token,
      },
  
      success: function (response) {
        return;
      },
      error: function (xhr, status) {
        switch (xhr.status) {
          case 403:
            window.location.replace("/admin/login");
            alert("You are not internal")
            break;
          default:
            alert("Not found");
            break;
        }
      },
    });
  });