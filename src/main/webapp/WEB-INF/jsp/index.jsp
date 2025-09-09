<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>자기소개 입력</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<html>
<body>
<h1>당신의 점심 메뉴를 추천해 드립니다</h1>
<button onclick="location.href='form.jsp'" class="btn btn-primary">
    점심 메뉴 등록
</button>

<form action="list" method="get">
    <button type="submit" class="btn btn-primary">점심 메뉴 조회</button>
</form>


</body>
</html>