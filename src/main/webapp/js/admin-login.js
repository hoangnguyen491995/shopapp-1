// ajax for post api login account
$(document).ready(function () {   
    $("#submit-form").click(function (e) {
    var array_error = []
        e.preventDefault();
        var email = $("#admin_login_email").val();
        var pass = $("#admin_login_password").val();
        if(email == ""){
            array_error.push({error:"Email là trường bắt buộc"})
        }
        if(pass == ""){
            array_error.push({error:"Mật khẩu là trường bắt buộc"})
        }
        console.log(array_error)
   
   var login_error = document.querySelector('#login_error')
   var htmls = array_error.map((error)=>{
    return  `
             <li> ${error.error}</li>
             `
         })
          login_error .innerHTML = htmls.join("")

          if(array_error.length ==0  ) {
              $.
                  ajax({
                      url: "http://localhost:8085/login",
                      type: "POST",
                      headers: {
                          "Content-Type": "application/json",
                      },
                      data: JSON.stringify({
                          email: email,
                          password: pass,
                      }),
      
                      success: function (response) {
                          alert('Đăng nhập thành công')
                          console.log(response.userDomain.fullName)
                          localStorage.setItem("name", response.userDomain.fullName);
                          localStorage.setItem("email", response.userDomain.email)
                          localStorage.token = response.accessToken;
                          window.location.replace("/admin/internal");
                      },
                      error: function (xhr, status) {
                           array_error = []
                          alert("Đăng nhập thất bại !");
                      },
                  });

          }else if( array_error.length !=0){
                console.log("có lỗi");
          } 
    });
});
