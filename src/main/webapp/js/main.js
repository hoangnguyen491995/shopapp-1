



// ========show login,resgister======== //

var form_login = document.querySelector("#login");
var form_resgister = document.querySelector("#register");

var login = document.querySelector("#loginHandle");
var resgister = document.querySelector("#registerHandle");
console.log(login);
login.onclick = function () {
  console.log("FREfeg");
  form_resgister.classList.remove("show_form");
  form_login.classList.add("show_form");
};

resgister.onclick = function () {
 console.log("frejkghtrg");
 form_resgister.classList.add("show_form");
 form_login.classList.remove("show_form");
};



 var showCatalog = document.querySelector(".showCatalog") ;

showCatalog.onclick= function (){
  console.log("hserhgraw");
};

var addCart = document.querySelector(".addCart") ;
console.log(addCart);

addCart.onclick= function () {
    console.log("hserhgraw");
    location.replace("cart");
} ;

function sendID(id){
    alert(id)
}

