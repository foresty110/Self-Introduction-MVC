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
<form action="form" method="post" class="w-50 mx-auto mt-4">

    <div class="mb-3">
        <label for="name" class="form-label fw-bold">이름</label>
        <input id="name" type="text" name="name" class="form-control">
    </div>

    <div class="mb-3">
        <label for="spicy" class="form-label fw-bold">맵기 정도</label>
        <input id="spicy" type="text" name="spicy" class="form-control">
    </div>

    <div class="mb-3">
        <label for="price" class="form-label fw-bold">가격</label>
        <input id="price" type="text" name="price" class="form-control">
    </div>

    <button type="submit" class="btn btn-primary" onclick=alert("등록완료")>제출하기</button>
</form>

</body>
</html>