$(function () {
    $('#btn_reg').click(function () {
        var user = {name: $('input[name=name]').val(), password: $('input[name=password]').val()};
        $.post(contextPath + '/signup', JSON.stringify(user)).done(function (data) {
            alert(JSON.stringify(data));
        }).fail(function () {
                alert('fail');
            });
    });
});
