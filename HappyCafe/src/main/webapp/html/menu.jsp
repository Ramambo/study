<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <title>메뉴</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 3px solid #1b3c35; /* 테두리 굵기 설정 */
            padding: 8px;
            text-align: center;
        }
        h1{
            text-align : center;
            color:white;
        }
        #top{
            background-color : #305E54;
        }
        #form{
            text-align: center;
        }


    </style>
    
    </head>
    <body>
        <%
            String userName =request.getParameter("userName"); //이름 받아오기
            //브라우저에 출력
        %>
       <br/>
        <div id="top">
	        <h1><%=userName%>님 안녕하세요!</h1>
	        <a href="index.jsp"><h1>★Happy Cafe MENU★</h1></a>
        </div>
        <table>
            <tr>
                <th>커피</th>
                <th>음료</th>
                <th>디저트</th>
            </tr>
            <tr>
                <td><img src="../img/Americano.jpg" alt="아메리카노" width="100"/></td>
                <td><img src="../img/Grapefruit.jpg" alt="자몽에이드" width="100"/></td>
                <td><img src="../img/Madeleine.jpg" alt="마들렌" width="100"/></td>
            </tr>
            <tr>
                <th>아메리카노 4500</th>
                <th>자몽에이드 5500</th>
                <th>마들렌 3500</th>
            </tr>
            <tr>
                <td><img src="../img/Latte.jpg" alt="카페라떼" width="100"/></td>
                <td><img src="../img/Lemonade.jpg" alt="레몬에이드" width="100"/></td>
                <td><img src="../img/choco.jpg" alt="초코케이크" width="100"/><br/>초코케이크</td>
            </tr>
            <tr>
                <td>카페라떼 5000</td>
                <td>레몬에이드 5500</td>
                <td>초코케이크 5000</td>
            </tr>
        </table>
        <br/>

        <form name="order" action="realcart.jsp" id="form">
            <fildset>
            	<h3>유저이름 </h3>
            	<input type="text" value="<%=userName%>" name="<%=userName%>">
                <h3> 커피 </h3>
                아메리카노 <input type="number" name="ameN" id="orderQty" value="0" max="10" min="0" step="0"/>
                카페라떼 <input type="number" name="latteN" id="orderQty" value="0" max="10" min="0" step="0"/>

                <h3> 음료 </h3>
                자몽에이드 <input type="number" name="gfN" id="orderQty" value="0" max="10" min="0" step="0"/>
                레몬에이드 <input type="number" name="lemonN" id="orderQty" value="0" max="10" min="0" step="0"/>

                <h3> 디저트 </h3>
                마들렌 <input type="number" name="maN" id="orderQty" value="0" max="10" min="0" step="0"/>
                초코케이크 <input type="number" name="choN" id="orderQty" value="0" max="10" min="0" step="0"/>
                <br/><br/>
                <button type="submit"> 주문 </button> 
                <button type="reset"> 리셋 </button>
            </fildset>
        </form>

        <a href="cart.jsp"> -----> 눌러보세요! <-------</a>        
        
        
        
        
    </body>

</html>