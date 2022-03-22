// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery-ui
//= require jquery3
//= require jquery_ujs

(function() {
    'use strict'
    document.querySelector('#navbarSideCollapse').addEventListener('click', function () {
      document.querySelector('.offcanvas-collapse').classList.toggle('open')
    })
})()


import "trix"
import "@rails/actiontext"

// função para contar caracteres
$(document).ready(function(){
  if ($('.count-textarea').length > 0) {
    $('.current').text($('.count-textarea').val().length);
    $('.count-textarea').keyup(function(){
      var characterCount = $(this).val().length;
      $('.current').text(characterCount);
    });
  }
  // função para exibir url
  $('copy-url').click(function(e){
    e.preventDefault();
    var url = $(this).attr('data-clipboard-text');
    navigator.clipboard.writeText(url);
    alert('URL copiada com sucesso.')
  })
});

// ex.2 função para contar caracteres
function countChar() {
  var len = $('#textBox').val().length;
  $('#charNum').text(len + ' characters');
};

$(document).ready(function() {
  countChar();
  $('#textBox').change(countChar);
  $('#textBox').keyup(countChar);
});

