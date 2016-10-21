$(function(){
  $('#title').keyup(function(){
    var text = $(this).val();
    $('#title-result').html(text);
  });
  $('#editor').keyup(function(){
    var md = $(this).val();
    var html = marked(md);
    $('#result').html(html);
    console.log(html)
  });
});
