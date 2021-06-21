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

	$('#userPwd').focus(function () {
<<<<<<< HEAD
		console.log("asdf");
=======
>>>>>>> main
		faceX = 50;
		faceY = 70;

		$('.face').stop().animate({
			'top': faceY,
			'left': faceX
		}, 150);

		$('.pig').addClass('on')
	});

<<<<<<< HEAD
	$('#userId, #userPwd ').blur(function () {
=======
	$('#userId, #userPwd').blur(function () {
>>>>>>> main
		faceX = 50;
		faceY = 70;

		$('.pig').removeClass('on');

		$('.face').stop().animate({
			'top': faceY,
			'left': faceX
		}, 150);
	});
	

});
