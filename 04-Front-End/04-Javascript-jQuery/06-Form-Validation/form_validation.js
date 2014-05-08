$(document).ready(function(){
  checkFilled();
  $(document).bind('focusout click',function(){
    checkSubmit();
  });
});

var REGEX = { first_name: /\w/,
              last_name: /\w/,
              address: /\w/,
              country: /\w/,
              zip_code: /\d{5}/,
              city: /\w/,
              email: /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/,
              mobile_phone: /^(0(6|7)[-.\s]?(\d{2}[-.\s]?){3}\d{2})/};

var checkFilled = function(){
  $('input, textarea').on('focusout', function() {
    if($(this).val() == '' || !RegExp(REGEX[$(this).attr('id')]).test($(this).val())) {
      $(this).parent().addClass('has-error');
    }
    else {
     $(this).parent().removeClass('has-error').addClass('has-success');
    };
  });
};

var checkSubmit = function(){
  var counter = 0;
    $('input, textarea').each(function(){
      if ( $(this).parent().hasClass('has-error') || $(this).val() == '' ){
        counter++;
      };
    });
    if(!$('#tos').prop("checked")) {
      counter++;
    };

    (counter == 0) ? $('button[type="submit"]').removeAttr('disabled').text("Submit!") : $('button[type="submit"]').attr('disabled', true).text("Please fill all fields!");
};