// Mobile Menu -----------------------------------------------------------------
const mobileNav = document.getElementById('mobile-nav');

$('#mobile-menu-open').on('click', function(){
    mobileNav.style.right = 0;
});

$('#mobile-menu-close').on('click', function(){
    mobileNav.style.right = '-100%';
});

// Close mobile menu when click link
const mobileLinks = document.getElementsByClassName('mobile-link');
for (let i=0; i<mobileLinks.length; ++i){
    mobileLinks[i].addEventListener('click', function(){
        mobileNav.style.right = '-100%';
    });
}


// Interactive Navigation Bar On Scroll ----------------------------------------
const navBar = document.getElementById('nav-bar');
const clearNavBar = document.getElementsByClassName('clear-nav-bar')[0];
const mainLogo = document.getElementById('main-logo');



function scrollFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
      navBar.style.height = "3.5em";
      clearNavBar.style.backgroundColor = 'rgba(51,51,51,1)';
      mainLogo.style.height = "0.75em";

    } else {
      navBar.style.height = "4em";
      clearNavBar.style.backgroundColor = 'rgba(51,51,51,0)';
      mainLogo.style.height = "1em";
    }
}

window.addEventListener('scroll', scrollFunction);

// Roadmap grid box positioning and design -------------------------------------

// Alternate box positioning to grid: right and left
const milestoneBox = document.getElementsByClassName('milestone-box');
for (let i=0; i<milestoneBox.length; ++i){
    if (i%2==1){
        milestoneBox.item(i).className += ' milestone-box-left';
    } else if (i%2==0){
        milestoneBox.item(i).className += ' milestone-box-right';
    }
}

const milestoneBoxR = document.getElementsByClassName('milestone-box-right');
for(let i=0; i<milestoneBoxR.length; ++i){
    milestoneBoxR.item(i).style.gridRowStart = 2*i+1;
}

const milestoneBoxL = document.getElementsByClassName('milestone-box-left');
for(let i=0; i<milestoneBoxL.length; ++i){
    milestoneBoxL.item(i).style.gridRowStart = 2*i+2;
}

// Increase line before milestoneBtn
milestoneBox.item(milestoneBox.length-1).style.paddingBottom = '3.75em';

const milestoneBtn = document.getElementById('milestone-button');
milestoneBtn.style.gridRowStart = milestoneBox.length+1;




// Add smooth scroll support ---------------------------------------------------
$('a[href*="#"]').not('[href="#"]').not('[href="#0"]').click(function (t) {
    if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname) {
        var e = $(this.hash);
        e = e.length ? e : $("[name=" + this.hash.slice(1) + "]"), e.length && (t.preventDefault(), $("html, body").animate({
            scrollTop: e.offset().top
        }, 600, function () {
            var t = $(e);
            if (t.focus(), t.is(":focus")) return !1;
            t.attr("tabindex", "-1"), t.focus()
        }))
    }
});