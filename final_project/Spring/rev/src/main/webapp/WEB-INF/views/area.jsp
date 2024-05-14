<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<link href="${cpath }/resources/css/stylearea.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Money For Travel - 여행지를 결정하신 분!</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
</head>

<body>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="text-center text-white">
						<!-- 페이지 제목-->
						<h1 class="display-5 fw-bolder text-white mb-2" id="titlefont">여행지를
							결정하신 분!</h1>
						<!-- 확인 버튼만 있는 양식-->
						<form class="form-subscribe" id="contactForm"
							onsubmit="submitForm(event)">
							<div class="col-auto">
								<button class="scroll-button btn btn-primary"
									onclick="scrollToFeature()">확인</button>
							</div>
						</form>
						<div id="result" class="mt-3"></div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<form method="POST">
		<!-- Icons Grid-->
		<section class="features-icons bg-light text-center" id="fu">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<i class="fa-solid fa-location-dot" style="color: #005eff;"></i>
					</div>
					<h3>지역 선택</h3>
					<p id="areafont">
						(강원도, 경기도, 경상남도, 경상북도, 광주광역시, 대구광역시, 부산광역시, 서울특별시, <br>울산광역시,
						인천광역시, 전라남도, 전라북도, 제주특별자치도, 충청남도, 충청북도 중)
					</p>
					<p>
						<input id="playarea" name="area" placeholder="여행지를 입력해주세요"
							required>
					</p>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<i class="fa-solid fa-map-location-dot" style="color: #0d6efd;"></i>
					</div>
					<h3>목적 여부</h3>
					<p id="areafont">
						여행 목적을 입력해 주세요!<br>(스키장, 문화서비스, 면세점, 레저용품쇼핑, 대형쇼핑몰, 관광유원시설, 골프장)
					</p>
					<input id="playgoal" name="goal" placeholder="여행목적을 입력해주세요"
						required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<i class="fa-solid fa-calendar-days" style="color: #0d6efd;"></i>
					</div>
					<h3>여행 월</h3>
					<p id="areafont">
						여행을 가고자 하는 월을 선택해주세요!<br>(1월~12월)<br>숫자만 입력해 주세요!
					</p>
					<input id="playmonth" name="month"
						placeholder="여행갈 월을 입력해주세요(1~12월)" required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<i class="fa-solid fa-bed" style="color: #0d6efd;"></i>
					</div>
					<h3>숙박 여부</h3>
					<p id="areafont">
						숙박 선택 가능일은 0일에서 <br>최대 5일까지 입니다!<br>숫자만 입력해 주세요!
					</p>
					<input id="playnight" name="night" type="number"
						placeholder="몇일동안 숙박하실지 정해주세요(0~5일)" required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<i class="fa-solid fa-bed" style="color: #0d6efd;"></i>
					</div>
					<h3>숙박 장소</h3>
					<p id="areafont">
						숙박하실 장소를 입력헤주세요<br>(호텔, 콘도, 캠핑장, 기타숙박)
					</p>
					<input id="playnightplace" name="nightplace"
						placeholder="숙박하실 장소를 입력헤주세요" required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<i class="fa-solid fa-bowl-food" style="color: #0d6efd;"></i>
					</div>
					<h3>식음료 장소</h3>
					<p id="areafont">
						식사를 몇 끼 하실지 입력해 주세요!<br>(0~15끼)<br>숫자만 입력해 주세요!
					</p>
					<input id="playfood" name="food" placeholder="식사를 몇 끼 하실지 입력해 주세요"
						type="number" required>
				</div>
			</div>

			<div class="dis" style="font-size: 20px; margin-top: 23px;">
				<button class="btn btn-primary btn-lg px-4 me-sm-3">최종 제출</button>
			</div>
		</section>
	</form>

	<!-- Core theme JS-->

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>