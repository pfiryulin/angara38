jQuery(function($) {
    $(window).scroll(function(){
        if($(this).scrollTop()>140){
            $('#navigation').addClass('fixed');
        }
        else if ($(this).scrollTop()<140){
            $('#navigation').removeClass('fixed');
        }
    });
});

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