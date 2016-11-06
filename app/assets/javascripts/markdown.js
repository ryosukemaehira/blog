$(document).on('turbolinks:load', function(){
  $(function(){
    $('#js-markdown-input').keyup(function(){
      var md = $(this).val();
      var html = marked(md);
      $('#js-markdown-preview').html(html);
    });
  });
})
