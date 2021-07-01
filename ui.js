var x, y;

if (window.screen.width < "576")
    window.onload = function () {
        nav = document.getElementById("Nav");
        btn = document.getElementById("Btn");
    }

function openNav() {
    if (nav.style.width == "230px") {
        nav.style.width = "0px";
    } else {
        nav.style.width = "230px";
    }
    btn.classList.toggle("change")
}