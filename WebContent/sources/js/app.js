jQuery(document).ready(function($) {

// Small menu
var smallMenu = $("#body .gp-menu-top .gp-widget .top-menu").hide();
var smallActiveMenu = $("#body .gp-menu-top .sous-menu-top");

var rightMenu = $('#body .gp-menu-right-main-content .gp-menu-right');
	$('#voir').click(function(event) {
		/* Act on the event */
		alert($('.gp-menu-right').text())
	});

	//Show menu
	$('#body .gp-menu-top .gp-widget i').click(function(event) {
		event.stopPropagation();
		smallMenu.html(rightMenu.html()).toggle();
	});

	/*________________________

	*/
	smallMenu.click(function(event) {
		/* Act on the event */
		event.stopPropagation();
	});
	$('html').click(function() {
		smallMenu.hide();
	});
	var ul = $('<ul></ul>');
	var liS = rightMenu.find('ul li.active');
	var dlis = liS.clone(true, true);
	$('#link-selected').html(dlis.find('a:first'));
	ul.append(liS.find('ul').html())
	smallActiveMenu.html(ul);
});