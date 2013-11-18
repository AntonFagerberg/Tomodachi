main = {
    qa: [''],

    //+ Jonas Raoni Soares Silva
    //@ http://jsfromhell.com/array/shuffle [v1.0]
    shuffle: function(o){ //v1.0
    for(var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
        return o;
    },


    load: function(url) {
        $.ajax({
            url: url,
            success: function(data) {
                main.qa = main.shuffle(JSON.parse(data));
                main.pick();
            }
        })
    },

    show: function() {
        if ($('#answer').text().trim() == $('#answer_input').val()) {
            $('#answer_input').css('color', 'green');
        } else {
            $('#answer_input').css('color', 'red');
        }

        $('#answer').toggle();
    },

    pick: function() {
        $('#question').text(main.qa[0].question);
        $('#answer').hide().text(main.qa[0].answer);
        $('#answer_input').css('color', 'black').val('');
    },

    keep: function() {
        main.shuffle(main.qa);
        main.pick();
    },

    remove: function() {
        if (main.qa.length > 1) {
            main.qa.splice(0, 1);
            main.pick();
        } else {
            $('#question').text('');
            $('#answer').hide().text('');
            $('#answer_input').css('color', 'black').val('');
            alert('Done!');
        }
    }
};

$(window).keydown(function(e) {
    switch (e.keyCode) {
        case 38:
            main.show();
            return false;
        case 37:
            main.keep();
            return false;
        case 39:
            main.remove();
            return false;
    }
    return;
});