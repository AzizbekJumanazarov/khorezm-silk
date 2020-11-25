$(document).ready(function() {
    $('.download-more-btn').click(function() {
        var route = $(this).data('route');
        var last_id = $('div.news-card:last').data('id');

        $.ajax({
            url: route,
            type: 'GET',
            data: {id: last_id},
            dataType: 'HTML',
            success: function(response) {
                if (response)
                    $('.news-row').append(response);
                else
                    $('.download-more-btn').fadeOut();
            }
        });
    });

    $('.see-more-btn button').click(function() {
        var route = $(this).data('route');
        var last_id = $('.gallery-row > .gallery-card:last').data('id');

        $.ajax({
            url: route,
            type: 'GET',
            data: {id: last_id},
            dataType: 'HTML',
            success: function(response) {
                if (response)
                    $('.gallery-row').append(response);
                else
                    $('.see-more-btn button').fadeOut();
            }
        });
    });

    $('#play-btn').click(function () {
        var url = $(this).data('url');
        var modal = $('#staticBackdrop');

        modal.find('iframe').attr('src', url);
        modal.modal('show');
    });

    $('#staticBackdrop button.close').click(function () {
        var modal = $('#staticBackdrop');

        modal.find('iframe').attr('src', '');
    });
});

$(window).ready(function() {
    $('#preloader').fadeOut(1000);
});