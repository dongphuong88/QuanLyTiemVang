// auto select has to be done when page ready
$(function () {
$('input').on("focus", function() {
    $(this).select();
});
})

// Retrieve GET parameter
function getParam(name){
   if(name=(new RegExp('[?&]'+encodeURIComponent(name)+'=([^&]*)')).exec(location.search))
      return decodeURIComponent(name[1]);
}
