<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- /WebContent/requestForm.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request 내장 객체 예제</title>
</head>
<body>
<h2>request 내장객체 : 클라이언트의 요청 정보를 저장하는 객체</h2>
<!-- post를 쓰면 url에 안뜨게 한다. -->
<!-- action="request1.jsp"이 같이 연결이 되어야한다 이름이 같아야함 -->
<form action="request1.jsp" method="post">
	<!-- <input type="hidden" value = "test" name = "test"> -->
	
	이름:<input type="text" name = "name"><br>
	
	나이:<input type="text" name= "age"><br>
	
	성별:<input type="radio" name= "gender" value="1">남
	 <input type="radio" name= "gender" value="2">여<br>
	
	취미:<input type="checkbox" name= "hobby" value="요리">요리
	 <input type="checkbox" name= "hobby" value="여행">여행
	 <input type="checkbox" name= "hobby" value="야구">야구
	 <input type="checkbox" name= "hobby" value="축구">축구
	 <input type="checkbox" name= "hobby" value="독서">독서
	 <input type="checkbox" name= "hobby" value="게임">게임</br>
	
	출생연도: <select name = "year">
	<% for (int i=1980; i<2000; i++){ %>
		<option><%=i %></option>	
	<%	} %> 
	</select></br>
	<input type = "submit" value="전송">
</form>
</body>
</html>