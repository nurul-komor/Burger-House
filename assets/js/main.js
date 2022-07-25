$(document).ready(function() {
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
    $(".delivery-phone").click(function() {
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

// order section
function add(btn_plus, btn_minus, display) {
    var num = 0;
    if (num >= 0) {
        btn_plus.addEventListener('click', () => {
            num++;
            display.value = num;
        })
        if (num > -1) {
            btn_minus.addEventListener('click', () => {
                if (num > 0) {
                    num--;
                    display.value = num;
                }
            })
        }
    }
}
// One
const btn_plus_one = document.querySelector("#chart-plus-one");
const btn_minus_one = document.querySelector("#chart-minus-one");
const display_one = document.querySelector("#add-input-one");
add(btn_plus_one, btn_minus_one, display_one)
// Two
const btn_plus_two = document.querySelector("#chart-plus-two");
const btn_minus_two = document.querySelector("#chart-minus-two");
const display_two = document.querySelector("#add-input-two");

add(btn_plus_two, btn_minus_two, display_two)
// Three
const btn_plus_three = document.querySelector("#chart-plus-three");
const btn_minus_three = document.querySelector("#chart-minus-three");
const display_three = document.querySelector("#add-input-three");

add(btn_plus_three, btn_minus_three, display_three)

// preloader
$(window).on("load", function() {
    $(".preloader").fadeOut();
    $(".preloader").delay(5000).fadeOut("slow");
});