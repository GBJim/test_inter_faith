# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
//= require jquery.capty.min.js
ready = ->
 	$('.religion_image').capty({

  	animation: 'fade',
  	speed:     400,
  	height:   120,

	});

$(document).ready(ready)