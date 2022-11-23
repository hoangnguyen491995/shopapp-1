/*=============== SHOW MENU ===============*/
const navMenu = document.getElementById('nav-menu'),
    navToggle = document.getElementById('nav-toggle'),
    navClose = document.getElementById('nav-close')


/*===== MENU SHOW =====*/
/* Validate if constant exists */
if(navToggle){
    navToggle.addEventListener('click', () =>{
        navMenu.classList.add('show-menu')
    })
}
/* Validate if constant exists */
if(navClose){
    navClose.addEventListener('click', () =>{
        navMenu.classList.remove('show-menu')
    })
}
/*=============== REMOVE MENU MOBILE ===============*/
const navLink = document.querySelectorAll('.nav__link')

function linkAction(){
    const navMenu = document.getElementById('nav-menu')
    // When we click on each nav__link, we remove the show-menu class
    navMenu.classList.remove('show-menu')
}
navLink.forEach(n => n.addEventListener('click', linkAction))

// ========show login,resgister======== //

const form_login= document.querySelector('.myAccount_form_login')
const form_resgister= document.querySelector('.myAccount_form_resgister')

const login = document.getElementById('myAccount_handle_login')
const resgister= document.getElementById('myAccount_handle_resgister')

resgister.onclick= function(){
    console.log(form_login.classList.length);
    form_login.classList.add('show_form')
    form_resgister.classList.remove('show_form')
}
login.onclick = function (){
    form_login.classList.remove('show_form')
    form_resgister.classList.add('show_form')

}

