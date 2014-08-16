# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
//= require jquery.capty.min.js
caption = ->
 	$('.religion_image').capty({

  	animation: 'fade',
  	speed:     400,
  	height:   130,

	});

mountCKEeditor = ->
	$('.ckeditor').ckeditor({
	
	
	});


$(document).ready(caption)
$(document).ready(mountCKEeditor)

