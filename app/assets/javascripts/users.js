// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
    $(".profil-actions").hover(function() {
      $(this).css('cursor','pointer');
  });

  $( ".profil-actions" ).click(function() {
    $(".current-profil").addClass( "hidden" );
    $(".update-form").removeClass( "hidden" );
  });
});




// $( ".profil-actions" ).click(function() {
//   $(".current-profil").addClass( "hidden" );
//   $(".update-form").removeClass( "hidden" );
