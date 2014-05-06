/*
  *
  * TODO: add your code here!
  *
*/

/* hide message id before making it appear (slideDown is an appearance effect) */
$('#message').hide();

/* delay when document is ready by 500 and add effect */
$(document).ready(function() {
  $('#message').delay(500).slideDown(1000);
});

/* sur un click remonte */
$('#message').on('click', function(e) {
  $(this).slideUp();
});

/* message isn't here anymore but message-wrapper is, so we make it appear*/
$('#message-wrapper').on('mouseenter', function(e) {
  $('#message').slideDown();
});

/* and leave when mouse leaves */

$('#message-wrapper').on('mouseleave', function(e) {
  $('#message').slideUp();
});