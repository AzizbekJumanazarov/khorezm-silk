$(document).ready(function() {
    $('.refresh-circle').click(function() {
        var route = $(this).data('route');
        var last_id = $('div.blogs-card:last').data('id');

        $.ajax({
            url: route,
            type: 'GET',
            data: {id: last_id},
            dataType: 'HTML',
            success: function(response) {
                if (response)
                    $('#news-section .row').append(response);
                else
                    $('.refresh-circle').fadeOut();
            }
        });
    });
});