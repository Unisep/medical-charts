$(document).ready(function() {
    function setHeight() {
        var top = $('nav').outerHeight();
        var bottom = $('footer').outerHeight();
        var totHeight = $(window).height();
        $('.min-content-height').css({
            'min-height': totHeight - top - bottom - 20 + 'px'
        });
    }

    $(window).on('resize', function() { setHeight(); });

    setHeight();
});
