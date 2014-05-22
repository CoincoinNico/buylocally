$(document).ready(function(){

  $('body').on('click', '.delete-image', function(){
    $(this).parent("fieldset").fadeOut(100);
  });

})
