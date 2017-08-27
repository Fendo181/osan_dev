// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  var $searchTrigger = $('[data-ic-class="search-trigger"]'),
      $searchInput = $('[data-ic-class="search-input"]'),
      $searchClear = $('[data-ic-class="search-clear"]');

  $searchTrigger.click(function(){

    var $this = $('[data-ic-class="search-trigger"]');
    $this.addClass('active');
    $searchInput.focus();

  });

  $searchInput.blur(function(){

    if($searchInput.val().length > 0){

      return false;

    } else {

      $searchTrigger.removeClass('active');

    }

  });

  $searchClear.click(function(){
    $searchInput.val('');
  });

  $searchInput.focus(function(){
    $searchTrigger.addClass('active');
  });

});
