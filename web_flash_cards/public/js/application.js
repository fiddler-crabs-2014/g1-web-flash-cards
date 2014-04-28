$(document).ready(function() {
  // on click from form on deck.erb
  $('.check_answer').click(function(event){
    event.preventDefault();//stop browser to take action for clicked anchor
    $('.answer_card').removeClass('hide');
    $('.card').addClass('hide');

    setTimeout(function() {
      $('#guess').submit();
   }, 1500);
  });
});
