#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>화려한 테스트 페이지</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #e0eafc, #cfdef3);
      margin: 0;
      padding: 0;
    }

    .container {
      width: 800px;
      margin: 30px auto;
      background-color: #ffffffcc;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    h1 {
      text-align: center;
      color: #333;
    }

    .card {
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 10px;
      padding: 20px;
      margin-bottom: 20px;
      transition: transform 0.3s;
    }

    .card:hover {
      transform: scale(1.02);
    }

    .button {
      display: inline-block;
      padding: 12px 24px;
      background-color: #007BFF;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      margin-top: 10px;
      transition: background-color 0.3s;
    }

    .button:hover {
      background-color: #0056b3;
      cursor: pointer;
    }

    .image-box {
      text-align: center;
      margin-bottom: 20px;
    }

    .image-box img {
      width: 100%;
      max-width: 400px;
      border-radius: 10px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>✨ 화려한 테스트 페이지 ✨</h1>

    <div class="image-box">
      <img id="randomImage" src="https://placekitten.com/400/300" alt="랜덤 이미지" />
      <br>
      <button class="button" onclick="changeImage()">이미지 바꾸기</button>
    </div>

    <div class="card">
      <h2>🎈 첫 번째 카드</h2>
      <p>이것은 애니메이션 효과가 적용된 카드입니다. 마우스를 올려보세요!</p>
      <button class="button" onclick="showAlert('첫 번째 카드!')">알림 보기</button>
    </div>

    <div class="card">
      <h2>🌟 두 번째 카드</h2>
      <p>자바스크립트를 사용하여 동적 동작을 할 수 있습니다. 원하는 기능을 추가해보세요.</p>
      <button class="button" onclick="showAlert('두 번째 카드!')">또 다른 알림</button>
    </div>
  </div>

  <script>
    function showAlert(message) {
      alert("클릭한 카드: " + message);
    }

    function changeImage() {
      const width = Math.floor(Math.random() * 200) + 300;
      const height = Math.floor(Math.random() * 200) + 300;
      const imageUrl = `https://placekitten.com/${width}/${height}`;
      document.getElementById("randomImage").src = imageUrl;
    }
  </script>
</body>
</html>
EOM

echo "Script complete."
