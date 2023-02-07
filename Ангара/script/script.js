const anchors = document.querySelectorAll('.button a')

for (let anchor of anchors) {
    anchor.addEventListener('click', function (e) {
        e.preventDefault()

        const blockID = anchor.getAttribute('href')

        document.querySelector(blockID).scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        })
    })
}


const header = document.querySelector('.header__info'); //получаем элемент над меню, для для получения его высоты
const burger = document.querySelector('.burger');
const headerHeight = header.offsetHeight;// получаем высоту элемента на меню
const menu = document.querySelector('.header__menu');// получае мэлемент с меню
const menuHeight = menu.offsetHeight; //получаем высоту меню
const underMenu = document.querySelector('.baner')// получаем элемент под меню
const body = document.querySelector('body');
function fixmenu() {
    let scrollDistanse = window.scrollY;
      if(document.documentElement.clientWidth >= 1080) {
          if (scrollDistanse <= headerHeight) {
              menu.classList.remove ( 'fixed' );
              underMenu.style.marginTop = "0";
          } else {
              menu.classList.add ( 'fixed' );
              underMenu.style.marginTop = menuHeight + "px";
          }
      }
      else {
          underMenu.style.marginTop = "0";
      }
}



burger.onclick = function(){
    menu.classList.toggle('show');
    burger.classList.toggle('show');
    body.classList.toggle('notoverflow');

}

window.addEventListener('scroll', fixmenu);

// alert(document.documentElement.clientWidth);
// if (document.documentElement.clientWidth <= 920){
//     menu.style.display = "none";
//     }
//     else{
//         window.addEventListener('scroll', fixmenu);
//     }