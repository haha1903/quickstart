$(function () {
    $('#btn_login').click(function () {
        var user = {name: $('input[name=name]').val(), password: $('input[name=password]').val()};
        $.post(contextPath + '/login', JSON.stringify(user)).done(function (data) {
            if(data.success) {
                alert('login success');
            } else {
                alert(data.message);
            }
        }).fail(function (jqxhr) {
                alert(jqxhr.responseJSON.message);
            });
    });
    $('.delete').click(function() {
        var self = $(this);
        var id = self.attr('id');
        $.delete(contextPath + '/user?id=' + id).done(function(data) {
            alert('delete success');
            self.parents('tr.user').remove();
        });
        return false;
    });
});
