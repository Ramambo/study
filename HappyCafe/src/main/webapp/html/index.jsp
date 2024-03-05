<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HappyCafe</title>
        <link href="../css/index.css" rel="stylesheet"/>
        
    </head>
    <body>
        <div>
            <h1 class="top">★Happy Cafe★</h1>
        </div>
        <br/>
        <div class="top-img">
            <br/><br/><br/>
            <img src="../img/cafe1.jpg" alt="카페사진" width="1200" height="600"/>
        </div>

        <div class="login">
            <div class="login-wrapper">
                <h2>Login</h2>
                <form method="get" action="./ok.jsp" id="login-form">
                    <input type="text" name="userName" placeholder="UserName" required="required">
                    <input type="password" name="userPassword" placeholder="Password" required="required">
                    <label for="remember-check">
                        <input type="checkbox" id="remember-check"> 아이디 저장하기
                    </label>
                    <input type="submit" value="Login">
                </form>
            </div>


        </div>
        


    </body>
</html>