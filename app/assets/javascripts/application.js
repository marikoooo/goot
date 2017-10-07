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
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  $('.intro').addClass('go');
  });

$(function() {
  $('.topmenu-btn')
    .on('mouseenter', function(e) {
      var parentOffset = $(this).offset(),
      relX = e.pageX - parentOffset.left,
      relY = e.pageY - parentOffset.top;
      $(this).find('span').css({top:relY, left:relX})
    })
    .on("mouseout", function(e) {
      var parentOffset = $(this).offset(),
      relX = e.pageX - parentOffset.left,
      relY = e.pageY - parentOffset.top;
      $(this).find('span').css({top:relY, left:relX})
    });
  $('[href=""]').click(function() {
    return false
  });
});

$(window).on("load",function(){
 tr_default("#table-row-bg");
 $("tr").click(function(){
  tr_default("#table-row-bg");
  tr_click($(this));
 });
});

  $('a.ajax_link').delegate('ajax:success', function(data, res, xhr){
    $('.user-index').html(res);
  });

function tr_default(tblID){
 var vTR = tblID + " tr";
 $(vTR).css("background-color","#ffffff");
 $(vTR).mouseover(function(){
 $(this).css("background-color","#dedbdb") .css("cursor","pointer")
 });
 $(vTR).mouseout(function(){
  $(this).css("background-color","#ffffff") .css("cursor","normal")
 });
}

function tr_click(trID){
 trID.mouseover(function(){
  $(this).css("background-color","#dedbdb") .css("cursor","pointer")
 });
}

$(window).on("load",function() {
    $('tbody tr[data-href]').click( function() {
        window.location = $(this).attr('data-href');
    }).find('a').hover( function() {
        $(this).parents('tr').unbind('click');
    }, function() {
        $(this).parents('tr').click( function() {
            window.location = $(this).attr('data-href');
        });
    });
});