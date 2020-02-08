// A jQuery document ready handler
$(function(){
    // inject an exclamation icon into to the first child of each notice
    const $notices = $('main blockquote.notice');
    for(const notice of $notices){
        $(notice).children().first().prepend('<i class="fas fa-exclamation-triangle" aria-hidden></i> ');
    }
    
    // inject an info icon into to the first child of each aside
    const $asides = $('main blockquote.aside');
    for(const aside of $asides){
        $(aside).children().first().prepend('<i class="fas fa-info-circle" aria-hidden></i> ');
    }
});