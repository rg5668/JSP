<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>합계 결과 보기</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));//입력된 숫자
	String kind = request.getParameter("kind");//0:전체합, 1:홀수, 2짝수
	int sum = 0;
	for(int i=1; i<=num; i++) {
		switch(kind) {
		case "0" : sum += i; break;
		case "1" : if(i%2==1) sum += i; break;
		case "2" : if(i%2==0) sum += i; break;
		}
	}
%>
<h2>
<%=num %>까지의 <%= (kind.equals("0")?"전체":
	(kind.equals("1")?"홀수":"짝수")) %> 합 : <%=sum %>
</h2>
</body>
</html>