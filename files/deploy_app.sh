#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <meta charset="UTF-8">
  <head><title>Meow!</title>
    <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    .container {
      width: 800px;
      margin: 0 auto;
      background-color: #fff;
      padding: 30px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .card {
      border: 1px solid #ddd;
      padding: 20px;
      margin-bottom: 20px;
      border-radius: 5px;
    }
    .card h2 {
      margin-top: 0;
    }
    .button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007BFF;
      color: white;
      text-decoration: none;
      border-radius: 5px;
    }
    .button:hover {
      background-color: #0056b3;
    }
  </style>
  </head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s app. Replace this text with your own.
  <!-- END -->

  </div>

  <div class="container">
    <h1>테스트 페이지</h1>

    <div class="card">
      <h2>첫 번째 카드</h2>
      <p>이것은 테스트용 카드입니다. 간단한 내용을 여기에 넣을 수 있어요.</p>
      <a href="#" class="button">자세히 보기</a>
    </div>

    <div class="card">
      <h2>두 번째 카드</h2>
      <p>여기에는 다른 정보를 보여줄 수 있어요. 자유롭게 수정해서 사용하세요.</p>
      <a href="#" class="button">더 알아보기</a>
    </div>
  </div>
  </body>
</html>
EOM

echo "Script complete."
