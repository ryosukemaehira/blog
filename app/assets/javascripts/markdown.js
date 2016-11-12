saveImage = function() {
}

$(document).on('turbolinks:load', function(){
  $(function(){
    $('#js-markdown-input').keyup(function(){
      var md = $(this).val();
      var html = marked(md);
      $('#js-markdown-preview').html(html);
      console.log('そもそもkeyupは呼ばれてる？');

      $('#js-markdown-input').on("drop", function(_e){
        var e = _e;
        if( _e.originalEvent ){
            e = _e.originalEvent;
        }
        e.preventDefault();
        e.stopPropagation();
        var imageData = e.dataTransfer
        console.log(e.dataTransfer);
        saveImage;
      });
    });
  });
});
