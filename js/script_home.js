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

var ul = document.createElement('ul');
ul.setAttribute('id', cday);
ul.setAttribute('value', cday);
ul.setAttribute('class', 'checks');
$('.chk').append(ul);


// 운동 추가
$('.pt > ul li').click(function () {
    // active를 가지고 있는 td의 클래스
    var cnt = '<input type="number" class="count" min="1" max="9" value="1">';
    var dBtn = '<button type="button" class="del">×</button>';
    var li = document.createElement('li');
    li.innerHTML = '<input type="checkBox">' + '<span class="pl">' + $(this).text() + '</span> ' + cnt + dBtn;

    // 없으면 추가 있으면 리스트 카운트 + 1
    var ulChild = $('#' + clickday() + ' li');
    if (ulChild.length <= 0) {
        $('#' + clickday()).append(li);
    } else {
        var bool = true;
        for (var i = 0; i < ulChild.length; i++) {
            if ($(this).text() == ulChild.eq(i).children('.pl').text()) {
                var num = Number(ulChild.eq(i).find('.count').val());
                ulChild.eq(i).find('.count').val(num + 1);
                bool = false;
                break;
            }
        }

        if (bool) {
            $('#' + clickday()).append(li);
        }
    }

});


$(document).on('click', '.del', function () {
    $(this).parent('li').remove();
});


// 체크리스트 추가, 목표 달성 현황
$(document).on('click', function () {
    var day = today.getFullYear() + '' + (today.getMonth() + 1) + '' + today.getDate();

    // 날짜별 ul 생성하기
    var ul = document.createElement('ul');
    ul.setAttribute('id', day);
    ul.setAttribute('value', day);
    ul.setAttribute('class', 'checks');
    if ($('#' + clickday()).length <= 0) {
        $('.chk').append(ul);
    }

    // 클릭한 날의  ul만 보이기
    $('#' + day).show();
    $('.chk > ul').not('#' + day).hide();

    var all = $('#' + day).children('li').length;
    var chks = $('#' + day).find('input[type=checkbox]:checked').length;
    var ach = chks / all;

    if ($('.checks').css('display') == 'block') {
        // console.log(chks);
        if (all > 0) {
            $('.progress-bar').css('width', chks / all * 100 + '%').text(Math.round(chks / all * 100) + '%')
            $('#goalBar').css('width', chks / all * 100 + '%');
            $('#goalBar').text(Math.round(chks / all * 100) + '%');
        } else {
            $('#goalBar').css('width', 0 + '%');
            $('#goalBar').text('0%');
        }
    } else {
        if (all > 0) {
            if (ach > 0.9) {
                $('.' + day).addClass('aa').css('background', '#17851c8a');
            } else if (ach > 0.8) {
                $('.' + day).addClass('aa').css('background', '#51af8b8a');
            } else if (ach > 0.5) {
                $('.' + day).addClass('aa').css('background', '#bcbe228a');
            } else if (ach > 0.3) {
                $('.' + day).addClass('aa').css('background', '#91591a8a');
            } else {
                $('.' + day).addClass('aa').css('background', '#af51518a');
            }     // 배경이미지로
            //0일떄 색 없애기
        }
    }

    // 체크한거 맨뒤로, 해제한거 맨 앞으로
    $('#' + day).find('input[type=checkbox]').on('click', function () {
        if ($(this).is(":checked")) {
            $('#' + day).append($(this).parent());
        } else {
            $('#' + day).prepend($(this).parent());
        }
    });

});


