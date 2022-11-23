<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>OTT LandingPage</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="../css/index.css" />
</head>
<body>
<!-- ==================== HEADER ==================== -->
<header class="header">
    <div class="header1">
        <div>
            <img class="logoOCB" src="../assets/img-banner/OCB-logo.png" alt="">
        </div>
        <div class="header2">
            <div class="header__phone">
                <img class="icon_not-login" src="../assets/img-icon/phone-icon.png" alt="">
                <span style="font-size:30px;color:#e39717;" class="header_phone_number">
                          1800 6678
                    </h3>
            </div>
            <div class="header__phone">
                      <span style="color:#666666" class="header_title"><small>
                        Theo Dõi chúng tôi
                      </small></span>
                <img class="icon" src="/assets/img-icon/fb-icon.png" alt="">
                <img class="icon" src="/assets/img-icon/Twitter-icon.png" alt="">
                <img  class="icon" src="/assets/img-icon/youtobe-icon.png" alt="">
            </div>
        </div>
    </div>
    <div class="navigate">
        <div class="navigate_OMMIGO">
            <img class="logoOMNIGO" src="../assets/img-banner/OMNIGO-header-logo.png" alt="" class="nav__logo-img">
        </div>
        <div class="nav__menu" id="nav-menu">
            <div class="nav_icon_two">
                <div class="nav_person">
                    <img src="/assets/img-icon/person-not-login-icon.png" alt="">
                </div>
                <div class="nav__close" id="nav-close">
                    <img src="/assets/img-icon/delete-icon.png" alt="">
                </div>
            </div>
            <div class="nav__list">
                <div class="nav_div_link">
                    <a class="nav__link active-link"  href="/" onclick="route()">TRANG CHỦ</a>
                </div>
                <div class="nav_div_link">
                    <a class="nav__link " href="/introduce" onclick="route()">GIỚI THIỆU</a>
                </div>
                <div class="nav_div_link">
                    <a class="nav__link">DỊCH VỤ</a>
                </div>
                <div class="nav_div_link">
                    <a class="nav__link "  href="/contact" onclick="route()">LIÊN HỆ</a>
                </div>
                <div class="nav_div_link " style="border:none ;">
                    <a class="header_myAccount nav__link" href="/myAccount" onclick="route()">
                        MyAccount
                        <img class="nav__link__img" src="../assets/img-icon/person-not-login-icon.png" alt="">
                    </a>
                </div>
            </div>
            <!--============xxxxxxxxx=========-->
            <img src="assets/img/nav-img.png" alt="" class="nav__img">
        </div>
        <!-- ==================icons menu============= -->
        <div class="nav__toggle" id="nav-toggle">
            <img style="margin-right: 30px; width:40px;height:40px" src="/assets/img-icon/menu-icon.png" alt="">
        </div>
    </div>
</header>
<div>
    <img class="home_img" src="../assets/img-banner/bgr-contact.jpg" alt="">
</div>
<div class="home_bgr_title">
    <span style="color:#078a32 ">Trang chủ /</span>
    <span style="color: #e39717; margin-left: 4px;"> Liên Hệ</span>
</div>
<div class="contact_title">
    <div style="margin-bottom: 5px ;">
        <span style="color:#078a32 ;font-size:36px">Liên</span>
        <span style="color: #e39717; margin-left: 4px; font-size:36px"> Hệ</span>
    </div>
    <span style="font-size: 24px;color:#666666 ; max-width:750px; display:flex;justify-content:center;align-items: center ">
               Quý khách vui lòng điền đầy đủ các thông tin sau để chúng tôi
               có thể liên hệ và giải đáp thắc mắc của quý khách
             </span>
</div>
<!-- ==========from=========== -->
<div class="contact_forms">
    <div class="contact_forms_right">
        <h3 style="font-size: 30px; color:#08a43b; margin: 5px 0;" class="contact_forms_right_title">Địa chỉ của chúng tôi</h3>
        <div class="contact_forms_item">
            <img class="contact_forms_item_icon" src="../assets/img-icon/address-icon.png" alt="">
            <div class="contact_form_item_content">
                <h5  style="color:#333333; margin:2px 0;">Địa chỉ</h5>
                <span  style="color: #666666;" >
               41 & 45 Lê Duẩn, Quận 1, Tp. Hồ Chí Minh
              </span>
            </div>
        </div>
        <div class="contact_forms_item" id="contact_forms_item2" >
            <img class="contact_forms_item_icon2 "  src="../assets/img-icon/phone-icon-1.png" alt="">
            <div class="contact_form_item_content">
                <h5  style="color:#333333; margin:2px 0;">Điện thoại</h5>
                <span style="color: #666666;"> (84-28) 38 220 960 - 38 220 961 </span>
            </div>
        </div>
        <div class="contact_forms_item">
            <img class="contact_forms_item_icon" src="../assets/img-icon/email-icon.png" alt="">
            <div class="contact_form_item_content">
                <h5  style="color:#333333; margin:2px 0;">Email</h5>
                <span  style="color: #666666;">dvkh@ocb.com.vn</span>
            </div>
        </div>
    </div>
    <div class="contact_form_inputs">
        <div class="contact_form_input">
            <input class="contact_form_input_name" type="text" placeholder="Tên">
            <input class="contact_form_input_name" type="text" placeholder="Điện thoại">
        </div>
        <input class="contact_form_input_email" type="text" placeholder="Email">
        <input class="contact_form_input_content" type="text" placeholder="Lời nhắn">
        <div class="contact_form_button">
            <span style="color:#fff; font-size: 20px;"> Gửi </span>
        </div>
    </div>
</div>
<!-- ===========dịch vụ hoàn hảo========== -->
<div class="dichvuhoanhao">
    <!-- title -->
    <div class="dichvuhoanhao_title">
        <span style="color:#078a32 ;font-size:36px ; font-weight: 600">Dịch Vụ</span>
        <span style="color: #e39717; margin-left: 8px; font-size:36px ; font-weight: 600"> Hoàn hảo</span>
    </div>
    <!-- img -->
    <div class="dichvuhoanhao_content1">
        <div class="dichvuhoanhao_content_items" >
            <div class="dichvuhoanhao_content_item_left">
                <h3 style="color:#08a43b ; margin:2px 0; font-weight: 600;">Thẻ</h3>
                <span style="color:#333333 ;">Thoả sức chi tiêu - Thả ga tận hưởng</span>
            </div>
            <div class="dichvuhoanhao_content_items_background_the">
                <img  class="img_item" src="../assets/img-icon/card-icon.png" alt="">
            </div>
        </div>
        <div class="dichvuhoanhao_content_items" >
            <div class="dichvuhoanhao_content_items_background_vay" >
                <img class="img_item_vay" src="../assets/img-icon/loan-icon.png" alt="">
            </div>
            <div class="dichvuhoanhao_content_item_right">
                <h3 style="color:#08a43b; margin:2px 0 ; font-weight: 600">vay</h3>
                <span  style="color:#333333 ;">
               Kênh đầu tư thông minh trong thời đại số
              </span>
            </div>
        </div>
    </div>
    <!-- img -->
    <div class="dichvuhoanhao_content2">
        <div class="dichvuhoanhao_content_items" >
            <div class="dichvuhoanhao_content_item_left">
                <h3 style="color:#08a43b ; margin:2px 0 ; font-weight: 600 ">Tiết kiệm</h3>
                <span  style="color:#333333 ;">Kênh đầu tư thông minh trong thời đại số</span>
            </div>
            <div class="dichvuhoanhao_content_items_background_tietkiem">
                <img class="img_item" src="../assets/img-icon/save-icon.png" alt="">
            </div>
        </div>

        <img class="img_desktop" src="../assets/img-banner/contact-img.jpg" alt="">

        <div class="dichvuhoanhao_content_items" >
            <div class="dichvuhoanhao_content_items_background_taichinhthongminh">
                <img class="img_item" src="../assets/img-icon/finance-icon.png" alt="">
            </div>
            <div class="dichvuhoanhao_content_item_right">
                <h3 style="color:#08a43b ; margin: 2px 0; font-weight: 600">Tài chính thông minh</h3>
                <span  style="color:#333333 ;">
                   Mang đến cho bạn những bí kíp quản lý
                 </span>
                <span  style="color:#333333 ;">
                   chính thông minh nhất và giao dịch tài
                 </span>
            </div>
        </div>

        <img class="img_mobile" src="../assets/img-banner/contact-img.jpg" alt="">
    </div>
</div>
<!-- ============footer======== -->
<section class="footer">
    <div class="footer_title">
        <div class="footer__one">
            <div class="bgr_logoOCB1">
                <img class="logoOCB1" src="../assets/img-banner/OMINIGO-logo.png" alt="" class="nav__logo-img">
            </div>
            <div style="display:flex ;flex-direction: column;  justify-content: flex-start;
              align-items: flex-start;">
                <p style="font-size:18px ;" class="footer_congthuongmai" >
                    Cổng thương mại điện tử OMNIGo
                </p>
                <div class="header__phone">
                    <p>
                        Theo dõi chúng tôi
                    </p>
                    <img class="icon" src="../assets/img-icon/fb-icon.png" alt="icon-facebook">
                    <img class="icon" src="../assets/img-icon/Twitter-icon.png" alt="icon-twitter">
                    <img  class="icon" src="../assets/img-icon/youtobe-icon.png" alt="icon-youtobe">
                </div>
            </div>
        </div>
        <div class="footer_two" >
            <h3 style="color:#fff;font-size: 30px;">Liên hệ</h3>
            <div class=" footer_two_contact">
                <span style="color:#fff"  >
                  Hội sở chính_ 41 & 45 Lê Duẩn, Quận
                </span>
                <br>
                <span style="color:#fff">1, Tp. Hồ Chí Minh</span>
            </div>
            <div>
                <span style="color:#fff">
                  Tel_ (84-28) 38 220 960 - 38 220 961
                </span>
                <br>
                <span style="color:#fff"  >
                  Fax: (84-28) 38 220 963
                </span>
            </div>
        </div>
        <div class="footer_three">
            <h3 style="color:#fff ; font-size: 30px;" >
                Đăng ký nhận thông tin từ OCB
            </h3>
            <div class="footer__three__input">
                <input class="footer__three__input1" type="email" placeholder="Địa chỉ email của bạn">
                <div class="footer__background_button">
                    <span style="color:#fff">gửi</span>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-content">
              <span style="font-size:14px" >
                © COPYRIGHT 2018 NGÂN HÀNG PHƯƠNG ĐÔNG (OCB
            </span>
    </div>
</section>
<!-- =========Router======== -->
<script src="..js/router.js"></script>
<!--=============== SCROLL REVEAL ===============-->
<script src="../js/scrollreveal.min.js"></script>

<!--=============== SWIPER JS ===============-->
<script src="../js/swiper-bundle.min.js"></script>

<!--=============== MAIN JS ===============-->
<script src="../js/main.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous">
</script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
></script>
</body>
</html>













