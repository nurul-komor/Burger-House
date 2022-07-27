$(document).ready(function () {
    $(".owl-carousel").owlCarousel({
        autoWidth: false,
        loop: true,
        center: true,
        items: 1,
        loop: true,
        margin: 10,
        autoplay: true,
        autoplayTimeout: 3000,
        nav: false,
        dots: true,
    });
    $(".delivery-phone").click(function () {
        $(".remove-phone").toggleClass("hide");
        $(".add-phone").toggleClass("show");
    });

});
const navbar = document.querySelector(".navigation-bar")
const menuBtn = document.querySelector(".grt-mobile-button")
const body = document.querySelector("body")


menuBtn.onclick = () => {
    body.classList.toggle("stop")
}

window.onscroll = () => {
    this.scrollY > 20 ? navbar.classList.add("sticky") : navbar.classList.remove("sticky");
}
const removephone = document.querySelector(".remove-phone")
// const addphone = document.querySelector(".add-phone")

const call = document.querySelector(".nav-phone");
const delivery = document.querySelector(".delivery-phone");

delivery.onclick = () => {
    call.classList.toggle("show")

}


// preloader
$(window).on("load", function () {
    $(".preloader").fadeOut();
    $(".preloader").delay(5000).fadeOut("slow");

});