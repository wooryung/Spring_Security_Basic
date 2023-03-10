<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
    <h2>${user.username}님의 회원 정보</h2>

    <p>name: ${user.name}</p>
    <p>username: ${user.username}</p>
    <p>email: ${user.email}</p>
    <p>password: ${user.password}</p>
    <p>address: ${user.address}</p>
    <p>phone: ${user.phone}</p>
    <p>website: ${user.website}</p>
    <p>company: ${user.company}</p>

    <button type="button" onclick="location.href='update'">수정하기</button>

    <form action="/logout" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <button type="submit">로그아웃</button>
    </form>

    <form action="/delete" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <button type="submit">탈퇴하기</button>
    </form>
</body>
</html>