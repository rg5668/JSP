<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력된 숫자끼리의 합 구하기</title>
<script type = "text/javascript">
	function calcsum(k, f) {
		f.kind.value=k;
		f.submit();	//submit버튼 클릭 효과 발생. 단 onsubmit 이벤트 발생 안됨.
	}
</script>
</head>
<body>
<!-- hidden은 비연결성 파라미터 값을 넘기지 않기위해 안보이는 값 전달-->
<form action="request2.jsp" method="post">
	<input type="hidden" name="kind" value="0">
	<input type="text" name="num">까지의 합 구하기
	<input type="submit" value="합계구하기">
	<input type="button" value="짝수합구하기" onclick="calcsum(2,this.form)">
	<input type="button" value="홀수합구하기" onclick="calcsum(1,this.form)">
</form>
</body>
</html>