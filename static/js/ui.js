var x, y;

if (window.screen.width < "576")
    window.onload = function () {
        nav = document.getElementById("nav");
        btn = document.getElementById("btn");
    }

function openNav() {
    if (nav.style.width == "230px") {
        nav.style.width = "0px";
    } else {
        nav.style.width = "230px";
    }
    btn.classList.toggle("change")
}