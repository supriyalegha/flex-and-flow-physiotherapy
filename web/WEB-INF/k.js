/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.nav');
//let header = document.querySelector('#header');

menu.onclick = () => {
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
}



window.onscroll = function() {
    var header = document.getElementById('header');
    if (window.scrollY > 0) {
        header.style.backgroundColor = 'white';
    } else {
        header.style.backgroundColor = 'transparent';
    }
};


