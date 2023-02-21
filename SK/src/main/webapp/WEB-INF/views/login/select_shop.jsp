<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container text-center justify-content-center align-self-center" style="width: 600px;">
        <div class="box-shadow-full" style="margin-top: 100px;">
            <div class="row mb-4">
                <h1>SHOEKETING</h1>
            </div>
            <div class="row mb-3">
                <ul class="nav nav-tabs justify-content-center">
                    <li class="nav-item">
                      <a class="nav-link text-dark" href="/sk/loginSelect/member">일반회원</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="/sk/loginSelect/shop">매장회원</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-dark" href="/sk/loginSelect/brand">브랜드회원</a>
                    </li>
                  </ul>
            </div>
            <div class="row">
                <form class="php-email-form" id="loginForm">
                    <div class="form-group mt-3 mb-3">
                        <input type="text" class="form-control" id="SHOP_ID" name="SHOP_ID" placeholder="id" required/>
                    </div>
                    <div class="form-group mb-3">
                        <input type="password" class="form-control" id="SHOP_PW" name="SHOP_PW" placeholder="password" required/>
                    </div>
                    <div class="form-group mb-3 text-left">
                        <input type="checkbox" value="autoLogin" id="autoLogin">
                        <label class="form-check-label" for="autoLogin">
                          자동로그인
                        </label>
                    </div>
                    <div class="form-group mt-5 mb-5">
                        <button type="button" class="btn btn-dark" style="width: 300px;">로그인</button>
                    </div>
                    <div class="form-group mt-4 mb-3">
                        <button type="button" class="btn btn-dark" style="width: 100px;" onclick="location.href='/sk/shopJoinForm'">회원가입</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>