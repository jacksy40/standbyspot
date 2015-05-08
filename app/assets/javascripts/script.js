$(function() {
  $('#new_inquiry').on('ajax:complete', function(e, data, status, xhr){
    $('#inquiry_message').val('Thank you, your inquiry was sent.');
  })

  $('#new_conversation').on('ajax:complete', function(e, data, status, xhr){
    $('#conversation_message').val('message sent.');
  })
});
