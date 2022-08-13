<?php 
     session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- font awesome css -->
    <link rel="stylesheet" href="assets/css/all.min.css">
    <!-- card css -->
    <script>
    document.getElementsByTagName("html")[0].className += " js";
    </script>
    <link rel="stylesheet" href="assets/card/css/style.css">
    <link rel="stylesheet" href="assets/card/css/style.scss">
    <!-- bootstrap 4.6 css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- owlcarousel css -->
    <link rel="stylesheet" href="assets/plugin/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/plugin/owl.theme.default.min.css">

    <!-- mobile menu plugin css -->
    <link rel="stylesheet" href="assets/css/grt-responsive-menu.css">
    <link rel="stylesheet" type=""
        href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.24/sweetalert2.min.css">
    <script src="assets/js/jquery-3.2.0.min.js"></script>
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- respsive css -->
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body>
    <a href="login.php" style="display:none">link</a>
    <?php 
        include('card.php');
    ?>
    <div class="delivery-phone">
        <i class="fa-solid fa-phone remove-phone"></i>
        <i class="fa-solid fa-xmark add-phone"></i>
    </div>

    <!-- preloader Start-->
    <div class=" preloader">
    </div>
    <!-- preloader End-->
    <!-- nav bar start -->
    <!-- nav bar start -->
    <div class="navigation-bar ">
        <div class="logo  pl-lg-5 pl-sm-4">
            <a href=""><img src="assets/images/logo.png" alt="logo">
                <h3>Burger House</h3>
            </a>
        </div>
        <nav class="nav-right ">
            <button class="grt-mobile-button">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </button>
            <div class="nav-phone">
                <img src="assets/images/bike.png" alt="">
                <p>Express Delivery +1 234 567 890</p>
            </div>
            <ul class="menu-links grt-menu">
                <li><a class="active" href="#home">Home</a></li>
                <li><a href="#menu">Menu</a></li>
                <li><a href="#story">Our story</a></li>
                <li><a href="#contact">Contact us</a></li>
                <?php if(!isset($_SESSION['fName'])){?>
                <li><a href="customer/login">Login/Signup</a></li>
                <?php }?>
                <?php if(isset($_SESSION['fName'])){?>
                <script>
                function logout() {
                    $.ajax({
                        url: "/burgerHouse/logout.php",
                        method: "post",
                        dataType: "string",
                        data: {
                            action: "logout"
                        },
                        success: function() {

                        },
                        error: function(request) {
                            // console.log(request);
                        }
                    })
                }
                </script>
                <li><a href="customer/login?action=logout" onclick="logout()" false>Logout</a></li>
                <?php }?>
            </ul>
        </nav>
    </div>

    <!-- nav bar end -->
    <!-- header start -->
    <div class="header container-fluid" id="home">
        <div class="row">
            <div class="col-md-6 header-left">
                <h6>It is good time for the great taste of burger</h6>
                <h1>Burger</h1>
                <h2>Week</h2>
            </div>
            <div class="col-md-6 header-right">
                <img class="img-fluid " src="assets/images/burger-bg-1.png" alt="">
            </div>
        </div>
    </div>
    <!-- header end -->
    <!-- Burger image start-->
    <div class="burger-image container" id="menu">
        <div class="row">
            <div class="col-md-6">
                <div class="burger-image-left">
                    <div class="burger-image-texts">
                        <h4>Try it today</h4>
                        <h2>Most popular burder</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-12">
                        <div class="burder-image-right top">
                            <div class="burger-image-texts">
                                <h4>Try it today</h4>
                                <h2>Most popular burder</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="burder-image-right bottom">
                            <div class="burger-image-texts">
                                <h4>Try it today</h4>
                                <h2>Most popular burder</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Burger image end-->
    <!-- order start-->
    <div class="order container-fluid">
        <input type="hidden" id="test" name="">
        <div class="lg-container">
            <h4>Always tasty burger</h4>
            <h2>Choose & Enjoy</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel minus, explicabo sint officia numquam
                consequuntur nihil et qui<br> tempore ex laudantium harum ratione molestias ab, deserunt quod
                necessitatibus. Saepe, nam!</p>
        </div>
        <div class="row lg-container-fluid" id="all-foods">

            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image one"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.99" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to Cart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image two"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to
                        Chart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image three"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to
                        Chart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image one"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to Cart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image two"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to
                        Chart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image three"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to
                        Chart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image one"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to Cart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image two"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to
                        Chart</button>
                </div>
            </div>
            <div class="col-lg-4 p-0">
                <div class="order-section">
                    <div class="order-image three"></div>
                    <h3>Lorem ipsum dolor</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia, eligendi.</p>
                    <button data-price="55.55" class=" js-cd-add-to-cart" id="order-now-btn one" type="button"
                        class="btn">Add to
                        Chart</button>
                </div>
            </div>
        </div>
    </div>

    <!-- order end-->
    <!-- event start -->
    <div class="event container" id="story">
        <div class="owl-carousel">
            <div class="event-section">
                <div class="row">
                    <div class="col-md-6">
                        <h4>Discover</h4>
                        <h2>Upcoming events</h2>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                    </div>
                    <div class="col-md-6">
                        <div class="event-image item-one">

                        </div>
                    </div>
                </div>
            </div>
            <div class="event-section">
                <div class="row">
                    <div class="col-md-6">
                        <h4>Discover</h4>
                        <h2>Upcoming events</h2>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                    </div>
                    <div class="col-md-6">
                        <div class="event-image item-one">

                        </div>
                    </div>
                </div>
            </div>
            <div class="event-section">
                <div class="row">
                    <div class="col-md-6">
                        <h4>Discover</h4>
                        <h2>Upcoming events</h2>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                        <p>
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate fugit rem laudantium ex
                            quis illum fuga consequuntur, porro alias quidem numquam ab, molestiae illo natus? Aperiam,
                            sapiente! Reprehenderit, tempore sed?
                        </p>
                    </div>
                    <div class="col-md-6">
                        <div class="event-image item-one">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- event end -->
    <!-- reservation start -->
    <div class="reservation container-fluid" id="contact">
        <div class="center container-xl">
            <h4>Reservation</h4>
            <h2>Book your table</h2>
            <div class="input-box">
                <form method="post" id="findTable">
                    <div class="row">
                        <div class="col-md-6 input-container left">
                            <input type="text" name="name" id="" placeholder="Name" required="required">
                            <input type="date" name="date" id="" placeholder="Date" required="required">
                            <input type="number" name="people" id="" placeholder="People" required="required">
                        </div>
                        <div class="col-md-6 input-container right">
                            <input type="email" name="email" id="" placeholder="Email" required="required">
                            <input type="time" name="time" placeholder="time" id="" required="required">
                            <input type="hidden" name="action" value="findTable">
                            <button type="submit" class="btn">Find a table</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="svg-left-one"><img src="assets/images/input-bottom-left.png" alt=""></div>
        <div class="svg-left-two"><img src="assets/images/input-top-bg.png" alt=""></div>
        <div class="svg-right"><img src="assets/images/input-bg-2.svg" alt=""></div>
    </div>

    <!-- reservation end -->

    <!-- footer start -->
    <div class="footer container">
        <div class="row ">
            <div class="col-md-7 footer-left">
                <div class="logo">
                    <img src="assets/images/footer-logo.png" alt="">
                    <h4>Burger House</h4>
                </div>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quos neque ipsam consequatur! Fuga
                    exercitationem facere mollitia numquam, odit explicabo quas enim aspernatur excepturi minus quidem
                    consequatur debitis velit dolores laboriosam
                    dignissimos itaque labore est dolore id magnam. Natus, enim praesentium.</p>
            </div>
            <div class="col-md-5 footer-right">
                <p><i class="fa-solid fa-location-dot"></i>Main Road,Building Name, Country</p>
                <p><i class="fa-solid fa-envelope"></i>info@company.com</p>
            </div>
        </div>
        <div class="copyright-section">
            <div class="row">
                <div class="col-6">
                    <p>&copy; Company name all right reserverd</p>
                </div>
                <div class="col-6 text-right footer-social-media">
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-facebook-f"></i></a>
                    <a href=""><i class="fa-brands fa-twitter"></i></a>
                    <a href=""><i class="fa-brands fa-whatsapp"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- footer end -->

    <!-- font awesome js -->
    <script src="assets/js/all.min.js"></script>
    <!-- jquery js -->
    <script src="assets/js/jquery-3.2.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- mobile menu plugin js -->
    <script src="assets/plugin/grt-responsive-menu.js"></script>
    <!-- owlcarousel js  -->
    <script src="assets/plugin/owl.carousel.min.js"></script>
    <!-- bootstrap js -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <!-- ajax js  -->
    <!-- card js  -->
    <script src="assets/js/ajax.js"></script>
    <!-- <script src="assets/card/js/util.js"></script> -->
    <!-- <script src="assets/card/js/main.js"></script> -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.24/sweetalert2.all.min.js"></script>
    <!-- main js -->
    <script src="assets/js/main.js"></script>
    <script id="javaScript">
    </script>
</body>

</html>