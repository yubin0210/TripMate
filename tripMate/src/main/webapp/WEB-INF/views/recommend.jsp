<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gemini API 여행 추천</title>
<script type="importmap">
        {
            "imports": {
                "@google/generative-ai": "https://esm.run/@google/generative-ai"
            }
        }
    </script>
<style>
body {
	font-family: Arial, sans-serif;
}

#response {
	margin-top: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	background-color: #f9f9f9;
}

.input-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
}

input, select {
	width: 100%;
	padding: 8px;
	margin: 5px 0;
	box-sizing: border-box;
}

button {
	padding: 10px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<!-- 여행 카테고리, 국가, 일수 입력 -->
	<div class="input-group">
		<label for="category">여행 카테고리:</label> <select id="category">
			<option value="자연">자연</option>
			<option value="휴양">휴양</option>
			<option value="액티비티">액티비티</option>
			<option value="도시">도시</option>
		</select>
	</div>

	<div class="input-group">
		<label for="country">여행 국가:</label> <input type="text" id="country"
			placeholder="여행할 국가를 입력하세요 (예: 미국)">
	</div>

	<div class="input-group">
		<label for="days">여행 일수:</label> <input type="number" id="days"
			placeholder="여행 일수를 입력하세요 (예: 5)">
	</div>

	<button id="generate-button">추천 경로 생성</button>

	<div id="response"></div>

	<script type="module">
        import { GoogleGenerativeAI } from "@google/generative-ai";

        // API 키 설정
        const API_KEY = 'AIzaSyCLIlJDoqYEWTomdNItMFyka5-dCxOz6SI';

        // GoogleGenerativeAI 인스턴스 생성
        const genAI = new GoogleGenerativeAI(API_KEY);
        const model = genAI.getGenerativeModel({ model: "gemini-flash" });

        document.getElementById('generate-button').addEventListener('click', async () => {
            // 입력된 값 가져오기
            const category = document.getElementById('category').value.trim();
            const country = document.getElementById('country').value.trim();
            const days = document.getElementById('days').value.trim();

			console.log('Selected Category:', category);   
   			console.log('Entered Country:', country);       
    		console.log('Entered Days:', days);  

            // 입력 값 유효성 검사
            if (!category || !country || !days) {
                alert('모든 필드를 입력하세요.');
                return;
            }

            // 프롬프트 생성
            const prompt = country + '에서 ' + category + ' 컨셉의 ' + days + '일 여행 도시를 몇 개 추천 해주고, 각 도시마다 일별로 동선과 추천 식당, 관광명소 등을 자세히 설명하듯이 알려줘. ' +
			console.log('Generated Prompt:', prompt);  // 프롬프트 확인

            try {
                // API 호출
                const result = await model.generateContent(prompt);
				console.log('API Result:', result);

             // 응답 데이터에서 여행 경로 내용 가져오기
                if (result && result.response && result.response.candidates && result.response.candidates.length > 0) {
                    const content = result.response.candidates[0].content.parts[0].text; // 원하는 데이터 추출
                    document.getElementById('response').innerText = content; // 응답 텍스트 표시
                } else {
                    document.getElementById('response').innerText = "추천 결과가 없습니다.";
                }

            } catch (error) {
                console.error('API 호출 중 오류 발생:', error);
                document.getElementById('response').innerText = "오류가 발생했습니다.";
            }
        });

    </script>

</body>
</html>
