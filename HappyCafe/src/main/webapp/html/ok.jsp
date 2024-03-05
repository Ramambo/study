<%@ page  import="java.util.Map, java.util.Hashtable" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Hashtable이용-로그인</title>
    </head>
    <body>
        <h2>로그인처리Page</h2>
        <hr/>
        <%  
        //scriptlit(스크립트릿):java코드작성
        //client가 전송한 id와 비밀번호 data를 받기
        String inputedId  = request.getParameter("userName"); //id
        String inputedPwd =  request.getParameter("userPassword"); //비밀번호
        
        //Hashtable에  회원id와  비번
            Map<String,String> map 
            = new Hashtable<String,String>();
            map.put("hongid", "1");
            map.put("kimid", "12");
            map.put("leeid", "123");
            map.put("choiid", "1234");
            map.put("jangid", "12345");
            
            //비즈니스로직수행
            //입력받은 내용과 저장된 내용이 일치하면 "로그인성공"
            //그렇지 않으면 "로그인fail"
            String result = null;
            if(map.containsKey(inputedId)) {
                String memberPwd = map.get(inputedId);
                if( memberPwd.equals(inputedPwd) ) {
                    result = "로그인성공";
                    %>
                        <script>alert("로그인성공");</script>
                        <jsp:forward page="menu.jsp"></jsp:forward>
                    <%
                }else {
                    result = "비번불일치로 인한 로그인fail";
                    
                     %>
                        <script>alert("비밀번호 불일치");</script>
                        <jsp:forward page="index.jsp"></jsp:forward>
                    <%
                }
            }else {
                result = "해당 id가 존재하지 않습니다.";
                    %>
                        <script>alert("ID가 존재하지 않습니다.");</script>
                        <jsp:forward page="index.jsp"></jsp:forward>
                    <%
            }
            
            System.out.println(result);  //콘솔결과출력
            out.println(result);                   //브라우저에 결과출력
        %> 
        
        
        <hr/>
        <a href="../cf/loginFrm.jsp">상대경로:로그인페이지로이동</a>
        <a href="http://localhost:8081/webPro/cf/loginFrm.jsp">절대경로:로그인페이지로이동</a>
        <hr/>
    </body>
</html>



