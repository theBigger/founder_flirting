FAQ = function () {};

FAQ.prototype.init = function init() {
    jQuery('div.faq .answer').hide();
    
    jQuery('div.faq h2').click(function () {
        jQuery(this).parent().find('.answer').toggle();
    });
};
