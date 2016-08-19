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

  $(".tab").on("click", function(e){
  // Change active tab
  $('.tab').removeClass('active');
  $(this).toggleClass('active');
  // Hide all tab-content (use class="hidden")
  $('.tab-content').addClass('hidden');
  // Show target tab-content (use class="hidden")

  var show = $(this).attr("data-target");
  console.log(show)
  $(show).removeClass('hidden');
});
});




// $( ".profil-actions" ).click(function() {
//   $(".current-profil").addClass( "hidden" );
//   $(".update-form").removeClass( "hidden" );
