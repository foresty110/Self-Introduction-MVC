<%@ page import="java.util.List" %>
<%@ page import="Menu.Menu" %>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>자기소개 결과 화면</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<html>
<body>

<table class="table table-striped table-hover w-50 mx-auto mt-4">
    <thead>
    <tr>
        <th>메뉴 이름</th>
        <th>맵기 정도</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Menu> menuList = (List<Menu>) request.getAttribute("menuList");
        if (menuList != null) {
            for (Menu menu : menuList) {

    %>
    <tr>
        <td><%= menu.getName() %></td>
        <td><%= menu.getSpicy() %></td>
        <td><%= menu.getPrice() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3">메뉴 목록을 불러오지 못했습니다.</td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>

</html>