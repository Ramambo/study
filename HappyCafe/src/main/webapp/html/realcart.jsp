<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart.jsp</title>
<style>
	#top{
	background-color : #305E54;
	text-align : center;
	color: white;
	}
</style>
</head>
<body>
<% String userName =request.getParameter("userName"); //이름 받아오기 %>
	<div id="top">
	        <a href="index.jsp"><h1>★Happy Cafe MAIN★</h1></a>
	        <h1><%=userName%>님의 주문내역</h1>
        </div>
	
	<hr/>
	<% /*이 문서는 client의 요청request을 받아서
		 비즈니스로직 처리하는 server측의 문서이다.   */
		//<li>*이름 : <input type="text" name="userName" id="userName" value="hong길동"/></li>
		//<li>*비밀번호 : <input type="password" name="userPwd" id="userPwd" value="1234"/></li>		 

		 //client의 요청 request를 받아서 변수에 할당
		 int ameN = Integer.parseInt(request.getParameter("ameN"));
		 int latteN = Integer.parseInt(request.getParameter("latteN"));
		 int gfN = Integer.parseInt(request.getParameter("gfN"));
		 int lemonN = Integer.parseInt(request.getParameter("lemonN"));
		 int maN = Integer.parseInt(request.getParameter("maN"));
		 int choN = Integer.parseInt(request.getParameter("choN"));
		 
		 int sum = ameN*4500 + latteN*5000 + gfN*5500 + lemonN*5500 + maN*3500+choN*5000;
		 
		 
		 //브라우저에 출력
		 out.println("<h2>");
		 out.println("<br/>아메리카노 : "+ ameN);
		 out.println("<br/>라떼 : "+latteN);
		 out.println("<br/>자몽에이드 : "+gfN);
		 out.println("<br/>레몬에이드 : "+lemonN);
		 out.println("<br/>마들렌 : "+maN);
		 out.println("<br/>초코케이크 : "+ choN+"</h2>");
		 out.println("<br/><h1> 총 합산 금액 : "+sum);
	%>
</body>
</html>