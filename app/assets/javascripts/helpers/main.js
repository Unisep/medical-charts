/**
 * Created by bruno on 10/05/15.
 */

//$(document).ready(function() {
//    $('select').material_select();
//});

'use strict';

$(document).ready(function() {
    var input = $('.mask');
    input.mask(input.data('maskFormat'), {reverse: input.data('maskReverse'), placeholder: input.data('maskPlaceholder'), mask_maxlength: input.data('maskMaxlength')});
});

$(document).ready(function(){
    $('ul.tabs').tabs();
});
