<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<title>TripMate - 여행의 시작</title>
<style>
/* 기본 스타일 */
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

/* Hero 섹션 */
.hero {
	background: url('https://example.com/hero-image.jpg') no-repeat center
		center/cover;
	height: 70vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	text-align: center;
	color: #fff;
}

.hero h1 {
	font-size: 3em;
	margin-bottom: 20px;
}

.hero p {
	font-size: 1.2em;
	margin-bottom: 20px;
}

.hero button {
	padding: 10px 20px;
	font-size: 1.1em;
	background-color: #007BFF;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.hero button:hover {
	background-color: #0056b3;
}

/* 기능 섹션 */
.features {
	display: flex;
	height: 300px;
	justify-content: space-around;
	padding: 40px 20px;
	background-color: #ffffff;
}

.features .feature {
	flex: 1;
	text-align: center;
	padding: 20px;
}

.features h3 {
	margin-bottom: 15px;
	font-size: 1.5em;
	color: #333;
}

.features p {
	color: #666;
	font-size: 1em;
}

.features .feature-icon {
	font-size: 2.5em;
	margin-bottom: 10px;
	color: #007BFF;
}

/* Footer */
footer {
	text-align: center;
	padding: 20px;
	background-color: #35424a;
	color: white;
	position: relative;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

	<!-- Hero 섹션 -->
	<div class="hero">
		<h1>TripMate</h1>
		<p>여행 경로 추천부터 맞춤형 여행 정보까지, TripMate와 함께 시작하세요!</p>
		<a href="${cpath }/recommend"><button>여행 추천 받기</button></a>
	</div>

	<!-- 기능 소개 섹션 -->
	<div class="features">
		<div class="feature">
			<span class="feature-icon">🌍</span>
			<h3>다양한 여행 카테고리</h3>
			<p>자연, 액티비티, 휴양 등 여러 테마에 맞춘 여행을 추천해드립니다.</p>
		</div>
		<div class="feature">
			<span class="feature-icon">🗺️</span>
			<h3>맞춤형 여행 경로</h3>
			<p>선택한 여행지에 맞춘 일별 여행 경로를 제공하여 완벽한 여행을 계획하세요.</p>
		</div>
		<div class="feature">
			<span class="feature-icon">🍽️</span>
			<h3>추천 맛집 및 관광명소</h3>
			<p>여행지에서 꼭 가봐야 할 레스토랑과 명소를 추천해드립니다.</p>
		</div>
	</div>

	<!-- Footer -->
	<footer>
		<p>&copy; 2024 TripMate. 모두의 여행을 위한 완벽한 동반자.</p>
	</footer>

</body>
</html>