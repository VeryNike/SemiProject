var currentTitle = document.getElementById('current-year-month');
var calendarBody = document.getElementById('calendarbody');

var date = new Date();
var today = new Date();
var first = new Date(today.getFullYear(), today.getMonth(), 1);
var Year = today.getFullYear();
var dayList = ['일', '월', '화', '수', '목', '금', '토'];
var monthList = [
    '1월',
    '2월',
    '3월',
    '4월',
    '5월',
    '6월',
    '7월',
    '8월',
    '9월',
    '10월',
    '11월',
    '12월'
];
var leapYear = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
var notLeapYear = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
var pageFirst = first;
var pageYear;
if (first.getFullYear() % 4 === 0) {
    pageYear = leapYear;
} else {
    pageYear = notLeapYear;
}


function showCalendar() {
    let monthCnt = 100;
    let cnt = 1;
    for (var i = 0; i < 6; i++) { // 주
        var $tr = document.createElement('tr');
        $tr.setAttribute('id', monthCnt);
        for (var j = 0; j < 7; j++) { // 일
            var $td = document.createElement('td');
            if ((i === 0 && j < first.getDay()) || cnt > pageYear[first.getMonth()]) {
                $tr.appendChild($td);
            } else {
                $td.textContent = cnt;
                $td.setAttribute('id', cnt);
                $td.setAttribute('class', today.getFullYear() + '' + (today.getMonth() + 1) + cnt);
                $tr.appendChild($td);
                cnt++;
            }
        }
        monthCnt++;
        calendarBody.appendChild($tr);
        lastWeek();
    }

}

function lastWeek() {
    // console.log($('#105').children().eq(0).text());
    if ($('#105').children().eq(0).text() == '') {
        $('#105').empty();
    }
}


// 오늘 날짜
function showMain() {
    todayis.innerHTML =
        today.getFullYear() +
        '&nbsp;&nbsp;' +
        monthList[today.getMonth()] +
        '&nbsp;' +
        today.getDate() + "일";
}

showCalendar();
showMain();
clickday();
dayMarker();


var toactive = document.getElementById(date.getDate());

function dayMarker() {
    if (date.getFullYear() + '' + (date.getMonth() + 1) == today.getFullYear() + '' + (today.getMonth() + 1)) {
        toactive = document.getElementById(date.getDate());
    }
    toactive.classList.add('todayactive');
}

function removeCalendar() {
    let catchTr = 100;
    for (var i = 100; i < 106; i++) {
        var $tr = document.getElementById(catchTr);
        $tr.remove();
        catchTr++;
    }
}

var todayIs = document.getElementById('todayis');
todayIs.addEventListener('click', now);

function now() {
    today = new Date(today.getFullYear(), today.getMonth(), today.getDate());
    clickedDate1 = document.getElementById(today.getDate());
    clickedDate1.classList.add('activeDate');
    dayMarker();
    // clickday();
    clickStart();
}

// 이전달
var prevBtn = document.getElementById('prev');
prevBtn.addEventListener('click', prev);

function prev() {
    if (pageFirst.getMonth() === 1) {
        pageFirst = new Date(first.getFullYear() - 1, 12, 1);
        first = pageFirst;
        if (first.getFullYear() % 4 === 0) {
            pageYear = leapYear;
        } else {
            pageYear = notLeapYear;
        }
    } else {
        pageFirst = new Date(first.getFullYear(), first.getMonth() - 1, 1);
        first = pageFirst;
    }
    today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
    removeCalendar();
    showCalendar();
    showMain();
    // lastWeek();
    dayMarker();
    // clickday();
    clickedDate1 = document.getElementById(today.getDate());
    clickedDate1.classList.add('activeDate');
    clickStart();
}

// 다음달
var nextBtn = document.getElementById('next');
nextBtn.addEventListener('click', next);

function next() {
    if (pageFirst.getMonth() === 12) {
        pageFirst = new Date(first.getFullYear() + 1, 1, 1);
        first = pageFirst;
        if (first.getFullYear() % 4 === 0) {
            pageYear = leapYear;
        } else {
            pageYear = notLeapYear;
        }
    } else {
        pageFirst = new Date(first.getFullYear(), first.getMonth() + 1, 1);
        first = pageFirst;
    }
    today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
    removeCalendar();
    showCalendar();
    showMain();
    lastWeek();
    dayMarker();
    // clickday();
    clickedDate1 = document.getElementById(today.getDate());
    clickedDate1.classList.add('activeDate');
    clickStart();
}

var clickedDate1 = document.getElementById(today.getDate());
clickedDate1.classList.add('activeDate');


// 날짜 클릭 시 상단 날짜 변경, active 클래스 추가
var tdGroup = [];

function clickStart() {
    for (let i = 1; i <= pageYear[first.getMonth()]; i++) {
        tdGroup[i] = document.getElementById(i);
        tdGroup[i].addEventListener('click', changeToday);
    }
}

function changeToday(e) {
    for (let i = 1; i <= pageYear[first.getMonth()]; i++) {
        if (tdGroup[i].classList.contains('activeDate')) {
            tdGroup[i].classList.remove('activeDate');
        }
    }
    clickedDate1 = e.currentTarget;
    clickedDate1.classList.add('activeDate');
    today = new Date(today.getFullYear(), today.getMonth(), clickedDate1.id);
    showMain();
    keyValue = today.getFullYear() + '' + (today.getMonth() + 1) + '' + today.getDate();
}

clickStart();

var getId;
var cday = today.getFullYear() + '' + (today.getMonth() + 1) + '' + today.getDate();
function clickday() {
    $("#calendarbody > tr > td").click(function () {
        if ($(this).text() != '') {
            getId = $(this).attr("id");
            cday = today.getFullYear() + '' + (today.getMonth() + 1) + '' + getId;
        }
    });
    return cday;
}



// 체크리스트, 운동 목록
ptMenu();
function ptMenu() {
    $(function () {
        $('.pt').not('#allBox').hide();
        $('#all').addClass('bar');
    });

    $('.cate').click(function () {
        var id = $(this).attr('id');
        $('#' + id + 'Box').show();
        $('.pt').not('#' + id + 'Box').hide();
        $(this).addClass('bar');
        $('.cate').not($(this)).removeClass('bar');
    });
}



// 운동 추가
$('.pt ul li').click(function () {
	
	if($('#'+clickday()).length <= 0){
		var ul = document.createElement('ul');
		ul.setAttribute('id', clickday());
		ul.setAttribute('class', 'checks');
		$('#chk').append(ul);		
	}
    // active를 가지고 있는 td의 클래스
    var cnt = '<input type="number" class="count" min="1" max="9" value="1">';
    var dBtn = '<button type="button" class="del">×</button>';
    var li = document.createElement('li');
    li.innerHTML = '<input type="checkBox" class="isCheck" value="N">' + '<span class="pl"> ' + $(this).text() + '</span> ' + cnt + dBtn;

    // 없으면 추가 있으면 리스트 카운트 + 1
    var ulChild = $('#' + clickday() + ' li');
    if (ulChild.length <= 0) {
        $('#' + clickday()).append(li);
    } else {
    	var bool = true;
        for (var i = 0; i < ulChild.length; i++) {
//        	console.log(ulChild.eq(i).children('.pl').text().trim());
            if ($(this).text().trim() == ulChild.eq(i).children('.pl').text().trim()) {
                var num = Number(ulChild.eq(i).find('.count').val());
                ulChild.eq(i).find('.count').val(num + 1);
                ulChild.eq(i).find('.count').attr('value', num +1);
                bool = false;
                break;
            }
        }

        if (bool) {
            $('#' + clickday()).prepend(li);
        }
    }

});

$('.count').on('click', function(){
	$(this).attr("value", $(this).val());
});


$(document).on('click', '.del', function () {
    $(this).parent('li').remove();
});

$('#chk > ul').not('#' + cday).hide();


// 체크리스트 추가, 목표 달성 현황
$(document).on('click', function () {
    var day = today.getFullYear() + '' + (today.getMonth() + 1) + '' + today.getDate();

    // 날짜별 ul 생성하기
    var ul = document.createElement('ul');
    ul.setAttribute('id', day);
    ul.setAttribute('value', day);
    ul.setAttribute('class', 'checks');
    if ($('#' + day).length <= 0) {
        $('#chk').append(ul);
    }

    // 클릭한 날의 ul만 보이기
    $('#' + day).show();
    $('#chk > ul').not('#' + day).hide();
    
    statusStamp(day);
    statusBar(day);
    
});


// 체크한거 맨뒤로, 해제한거 맨 앞으로
$(document).on('click', '.isCheck', function () {
	if($(this).is(":checked")){
		$(this).parent().parent().append($(this).parent());
		$(this).attr("value", "Y");
	}else{
		$(this).parent().parent().prepend($(this).parent());
		$(this).attr("value", "N");
	}
	
	/*$('td').each(function(){
		var tdClass = $(this).attr("class");
		if($('#' + tdClass).length > 0){
			statusStamp(tdClass);
		}
	});*/
	
	
});

function statusBar(days){
	var a = $('#' + days).find('.isCheck').length;
	var c = $('#' + days).find('.isCheck:checked').length;
	if (a > 0) {
		$('.progress-bar').css('width',	c / a * 100 + '%').text(Math.round(c / a * 100) + '%');
	}else {
		$('.progress-bar').css('width', 0).text( 0 + '%');
	}
}

function statusStamp(days){
	var a = $('#' + days).find('.isCheck').length;
	var c = $('#' + days).find('.isCheck:checked').length;
		
	var ac = Math.round(c / a * 100);
	
	var bar = '';
	
	$('.' + days).removeClass('awsome perfect great good cheerup');
	
	if(a > 0){
		
		if (ac >= 90) {
			bar = 'awsome';
	    }
		else if (ac >= 70) {
			bar = 'perfect';
	    } 
		else if (ac >= 50) {
			bar = 'great';
		}
		else if (ac >= 30) {
			bar = 'good';
	    }
		else if (ac >= 10) {
			bar = 'cheerup';
	    }
		
		$('.' + days).addClass(bar);
		if(c == 0) {
			
			$('.' + days).removeClass('rr');
		} 
	}
}

$(document).ready(function(){ 
	
	$('.isCheck').each(function(){
		if($(this).attr('value') == 'Y'){
			$(this).prop("checked", true);
		}else{
			$(this).prop("checked", false);				
		}
	});
	
	statusBar(cday);
	
	
	$('td').each(function(){
		var tdClass = $(this).attr("class");
		if($('#' + tdClass).length > 0){
			statusStamp(tdClass);
		}
		
	});
		
});



$('.save').on('click', function(){
	console.log("aAAAa");
	$.ajax({
		url:'checkList.me',
		data:{
			date: cday,
			content:$('#' + cday).html()
		}
// success:function(data){
// console.log(data);
// }
		
	});
	
});



