<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>out ���� ��ü ����</title>
</head>
<body>
<h3>out ���� ��ü : response ��¹��ۿ� ����� �� �ִ� ��� ��Ʈ�� ��ü</h3>
<h3>1���� 10������ �� ���ϱ�</h3>
<%
	int sum = 0;
	for(int i = 1; i <= 10; i++) {
		sum += i;
%>
	1����<%=i %>������ �κ��� : <%=sum %> <br>
<% } %>
1���� 10������ �� : <%=sum %>

<hr>

<h3>1���� 10������ �� ���ϱ� : out ��ü �̿��ϱ�</h3>

<%
	sum = 0;
	for(int i = 1; i <= 10; i++) {
		sum += i;
		out.println("1���� " + i + "������ �κ���:" + sum + "<br>");
	}
	out.println("1���� 10������ ��:" + sum);
%>
</body>
</html>