$(function(){
    $.Lightbox.construct({
        download_link: false,
        show_linkback: false,
        show_info: true,
        files: {
            images: {
                prev: 'images/lightbox/prev.gif',
                next: 'images/lightbox/next.gif',
                blank: 'images/lightbox/blank.gif',
                loading: 'images/lightbox/loading.gif'
            }
        }
    });
});