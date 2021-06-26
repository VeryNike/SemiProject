
<%@page import="weather.model.vo.Weather"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.w3c.dom.*"%>
<%@ page import="javax.xml.parsers.*"%>
<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#weatherBtn {
	background: #636363;
	color: #c1dff0;
}

select {
	width: 120px;
}

#weatherList {
	display: none;
	text-align: center;
}

#weatherList tbody tr {
	height: 70px;
	vertical-align: middle;
	border-bottom: 1px solid #ffffff;
	margin: 10px;
	font-weight: bold;
}

#weatherList img {
	width: 80px;
}

#wTable {
	height: 200px;
	overflow-y: scroll;
	-ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
}

#wTable::-webkit-scrollbar {
    display: none; /* Chrome, Safari, Opera*/
}
</style>
<script src="lib/jquery-3.6.0.min.js"></script>
</head>
<body>


		
			<!-- <div class="section-header text-center wow zoomIn"
				data-wow-delay="0.1s"
				style="visibility: visible; animation-delay: 0.1s; animation-name: zoomIn;">
				<p>Today's weather</p>
				<h2>For Outdoor Activities</h2>
			</div> -->

			

				<div class="col-12 text-center .hero-btn">
					<select id="city" class="selectpicker">
					</select> 
					<select id="gun" class="selectpicker">
					</select> 
					<select id="gu" class="selectpicker">
					</select>
					<button id="weatherBtn" class="btn">날씨 조회</button>
				</div>

				<div id="wTable" class="col-10 text-center" style="float: none; margin:0 auto;">
					<table id="weatherList">
						<thead>
							<tr>
								<th class="col-md-1">Day</th>
								<th class="col-md-1">Hour</th>
								<th class="col-md-1">Temp</th>
								<th class="col-md-2">WfKor</th>
								<th class="col-md-1">Pop</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>




	<script>
		$(function() {
			$('#weatherBtn').on('click', function() {
				$('#weatherList').css('display', 'block');
					$.ajax({
						url : 'weatherList.me',
						data : {
							region : $('#gu').val()
						},
						success : function(data) {

							var $tbody = $('#weatherList tbody');
							$tbody.html('');

							for ( var i in data) {
								var wea = data[i];
								var $tr = $('<tr>');
								var $dTd = $('<td>').text(wea.d);
								var $hTd = $('<td>').text(wea.h);
								var $tTd = $('<td>').text(wea.t);
								var $wTd = $('<td>').html("<img src=images/weather/" + wea.w +">");
								var $pTd = $('<td>').text(wea.p);

								$tr.append($dTd);
								$tr.append($hTd);
								$tr.append($tTd);
								$tr.append($wTd);
								$tr.append($pTd);

								$tbody.append($tr);
						}

					}
				});

			});

		$.ajax({
			url : 'weather.me',
			success : function(data) {

				var $select = $('#city');
				$select.find('option').remove();

				$select.append($('<option>').text("----- 선택 -----"));
				for ( var i in data) {
					var city = data[i];
					var $option = $('<option value="' +city.code + '">').text(city.value);
					$select.append($option);
				}

			}
		});

		$('#city').on('change', function() {
			$.ajax({
				url : 'weather2.me',
				data : {
					city : $('#city').val()
				},
				success : function(data) {

					var $select = $('#gun');
					$select.find('option').remove();
					$select.append($('<option>').text("----- 선택 -----"));
					
					for ( var i in data) {
						var gun = data[i];
						var $option = $('<option value="' +gun.code + '">').text(gun.value);
						$select.append($option);
					}

				}
			});
		});

		$('#gun').on('change', function() {
			$.ajax({
				url : 'weather3.me',
				data : {
					gun : $('#gun').val()
				},
				success : function(data) {

					var $select = $('#gu');
					$select.find('option').remove();
					$select.append($('<option>').text("----- 선택 -----"));

					for ( var i in data) {
						var gu = data[i];
						var $option = $('<option value="' +gu.code + '">').text(gu.value);
						$select.append($option);
					}

				}
			});
		});
	});
	</script>
</body>
</html>


