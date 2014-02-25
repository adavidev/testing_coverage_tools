$(document).ready(function() {

$(".profile").click(function(){
  $.get("/profile", function(data){
    $(".profile-innards").html(data);
    $(".profile").toggleClass("pull-back");
  });
});

});
