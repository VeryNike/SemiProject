$(function () {

	var faceX;
	var faceY;
	var txtLength;

	function faceMove(txtLength) {

		faceX = 50 + txtLength * 2;
		faceY = 90;

		$('.face').stop().animate({
			'top': faceY,
			'left': faceX
		}, 150);

	}

	$('#userId').focus(function () {

		$('.pig').removeClass('on');

		faceMove(txtLength);

	});

	$('#userId').keydown(function () {

		txtLength = $(this).val().length;

		faceMove(txtLength);

	});

	$('#userPw').focus(function () {
		faceX = 50;
		faceY = 70;

		$('.face').stop().animate({
			'top': faceY,
			'left': faceX
		}, 150);

		$('.pig').addClass('on')
	});

	$('#userId, #userPw').blur(function () {
		faceX = 50;
		faceY = 70;

		$('.pig').removeClass('on');

		$('.face').stop().animate({
			'top': faceY,
			'left': faceX
		}, 150);
	});
	

});
