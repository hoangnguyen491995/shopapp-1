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
            <img class="logoOCB" src="/assets/img-banner/OCB-logo.png" alt="">
        </div>
        <div class="header2">
            <div class="header__phone">
                <img class="icon_not-login" src="/assets/img-icon/phone-icon.png" alt="">
                <span style="font-size:30px;color:#e39717;" class="header_phone_number">
                          1800 6678
                        </span>
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
                    <img src="../assets/img-icon/delete-icon.png" alt="">
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
            <img style="margin-right: 30px; width:40px;height:40px" src="../assets/img-icon/menu-icon.png" alt="">
        </div>
    </div>

</header>

<div >
    <img class="home_img" src="../assets/img-banner/Bgr-home.jpg" alt="">
</div>
<div class="home_target">
    <h1 style="color:#078a32; margin: 80px 0 20px 0"><big> Mục tiêu thật nhiều </big></h1>
    <h2 style="color:#e39717 ; margin: 0 0 50px 0;">
        Nhưng bạn chưa biết bắt đầu từ đâu?
    </h2>
    <img class="home_img_layer3" src="../assets/img-banner/Layer-3-home.jpg" alt="">
    <h2 style="color:#078a32 ; margin: 50px 40px"> Hãy để OCB giúp bạn tìm ra giải pháp phù hợp nhé! </h2>
    <div class="home_button_begin">
        <h5 style="font-weight: 600">Bắt đầu ngay</h5>
    </div>
</div>
<!-- <div class="home_navigate">
</div> -->
<div class=" home_navigate">
    <img style="width:100%" src="../assets/img-banner/Layer-4-home.jpg" alt=""/>
    <div class="home_navigate_content">
        <h1 style="color:#078a32" ><small>Giao dịch nhanh không lo gián đoạn. Mọi lúc. Mọi nơi.</small></h1>
        <h4 style="color:#333333;"> Hãy để OCB giúp bạn tìm ra giải pháp phù hợp nhé!</h4>
    </div>

</div>
<div class="home_navigate_items">
    <ul>
        <li class="home_navigate_item">
            <img class="home_navigate_item_icon" src="../assets/img-icon/Vector-Smart-1.png" alt="">
            <h4>Miễn phí mở tài khoản</h4>
        </li>
        <li class="home_navigate_item">
            <img class="home_navigate_item_icon" src="../assets/img-icon/Vector-Smart-2.png" alt="">
            <h4>Miễn phí mọi giao dịch chuyển tiền trong và ngoài hệ thống</h4>
        </li>
        <li class="home_navigate_item">
            <img class="home_navigate_item_icon" src="../assets/img-icon/Vector-Smart-3.png" alt="">
            <h4> Miễn phí thanh toán mọi hóa đơn</h4>
        </li>
        <li class="home_navigate_item">
            <img class="home_navigate_item_icon" src="../assets/img-icon/Vector-Smart-4.png" alt="">
            <h4> 1 OTP cho khách hàng ngàn giao dịch</h4>
        </li>
    </ul>
</div>
<div class="home_navigate_motaikhoanngay">
    <h2 style="color:#078a32">Mở Tài Khoản Miễn Phí</h2>
    <div class="home_button_bắtđầungay">
        <h5 style="font-weight: 600 ;"> Mở tài khoản ngay </h5>
    </div>
    <div class="line">
    </div>
</div>
<div class="home_navigate_hochieutaichinh">
    <h1 style="color:#078a32 ; margin: 50px 80px 0 80px; "><small> Tài chính của công dân toàn cầu</small></h1>
    <div class="home_navigate_hochieutaichinh_items">
        <div class="home_navigate_hochieutaichinh_item">
            <ul>
                <li class="home_navigate_item">
                    <img class="home_navigate_item_icon" src="../assets/img-icon/Exchange-icon.png" alt="">
                    <h3>
                        0% phí chuyển đổi ngoại tệ
                    </h3>
                </li>
                <li class="home_navigate_item">
                    <img class="home_navigate_item_icon" src="../assets/img-icon/ATM-icon.png" alt="">
                    <h3> +1 triệu ATM rút tiền mặt trên toàn thế giới<h3>
                </li>
                <li class="home_navigate_item">
                    <img  class="home_navigate_item_icon" src="../assets/img-icon/money-icon.png" alt="">
                    <h3>
                        +4.500 điểm ưu đãi trả góp 0%
                    </h3>
                </li>
                <li class="home_navigate_item">
                    <img  class="home_navigate_item_icon" src="../assets/img-icon/cart-icon.png" alt="">
                    <h3>
                        +1000 điểm ưu đãi mua sắm, nhà hàng, Khách sạn quốc tế
                    </h3>
                </li>
            </ul>
        </div>
        <div class="home_img_card">
            <img src="../assets/img-banner/cards.jpg" alt="">
        </div>
    </div>
    <div class="line2">
    </div>
</div>
<div class="home_navigate_chuongtrinhUudai">
    <div class="home_navigate_chuongtrinhUudai_title">
        <h1 style="margin: 0  ;"><small>Chương trình ưu đãi khác</small>
        </h1>
    </div>
    <div class="home_navigate_chuongtrinhUudai_items">
        <div class="home_navigate_chuongtrinhUudai_item"  >
            <img class="home_navigate_chuongtrinhUudai_img" src="../assets/img-banner/Layer-6-home.jpg" alt="">
            <span style="font-size:28px ; color: #333333"> Chia sẻ OMNI - Nhận tiền </span>
            <span style="font-size:28px ; color: #333333"> mê ly</span>
            <u style="color:#e39717" class="home_navigate_chuongtrinhUudai_xemngay">
                Xem ngay
            </u>
        </div>
        <div class="home_navigate_chuongtrinhUudai_item">
            <img class="home_navigate_chuongtrinhUudai_img" src="../assets/img-banner/Layer-7-home.jpg" alt="">
            <span style="font-size:28px ; color: #333333; "> Tích điểm OMNI - đổi quà </span>
            <span style="font-size:28px ; color: #333333;"> như ý </span>
            <u style="color:#e39717;" class="home_navigate_chuongtrinhUudai_xemngay" >
                Xem ngay
            </u>
        </div>
        <div class="home_navigate_chuongtrinhUudai_item">
            <img class="home_navigate_chuongtrinhUudai_img" src="../assets/img-banner/Layer-8-home.jpg" alt="">
            <span style="font-size:28px ; color: #333333"> Đầu tư dễ dàng, lợi nhuận </span>
            <span style="font-size:28px ; color: #333333"> cao ngất </span>
            <u style="color:#e39717;" class="home_navigate_chuongtrinhUudai_xemngay" >
                Xem ngay
            </u>
        </div>
    </div>
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
    <script src="../js/router.js"></script>
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



