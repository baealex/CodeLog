<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport", content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %> 
    <script src="main.js"></script>

    <%
    
    String area = request.getParameter("area");

    out.print("선택한 지역 : " + area);

    %>
</body>
</html>