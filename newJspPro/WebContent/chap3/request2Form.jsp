<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Էµ� ���ڳ����� �� ���ϱ�</title>
<script type = "text/javascript">
	function calcsum(k, f) {
		f.kind.value=k;
		f.submit();	//submit��ư Ŭ�� ȿ�� �߻�. �� onsubmit �̺�Ʈ �߻� �ȵ�.
	}
</script>
</head>
<body>
<!-- hidden�� �񿬰Ἲ �Ķ���� ���� �ѱ��� �ʱ����� �Ⱥ��̴� �� ����-->
<form action="request2.jsp" method="post">
	<input type="hidden" name="kind" value="0">
	<input type="text" name="num">������ �� ���ϱ�
	<input type="submit" value="�հ豸�ϱ�">
	<input type="button" value="¦���ձ��ϱ�" onclick="calcsum(2,this.form)">
	<input type="button" value="Ȧ���ձ��ϱ�" onclick="calcsum(1,this.form)">
</form>
</body>
</html>