<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Script(��ũ��Ʈ ����)</title>
</head>
<body>
<ol>
	<li>��ũ��Ʈ��(Scriptlet) : &lt;% .... %&gt; <br>
		�ڹ� �ҽ��� ����. ���긴�� _jspService() �޼��忡 �����Ǵ� ���� </li>
	<li>ǥ����(Expression) : &lt;% .... %&gt; <br>
		�ڹ� �ҽ��� ����. ������ �������� ȭ�鿡 ��µ�. �ݵ�� ���� �ʿ���. <br>
		�������� ;�� ���� ����. �ּ��� ������ �ּ��� ������.</li>
	<li>����(Declaration) : &lt;% .... %&gt; <br>
		�ڹ� �ҽ��� ����. ���긴�� ��� ������, ��� �޼���� �����. ���� ������. </li>		
</ol>

<!-- out.println(100/*������ �ּ�*/) -->
<%= 100 %>

<% String msg = "��ũ��Ʈ ����;";
	for(int i=1; i<=10; i++) { %>
	<%= i + ":" + this.msg + "<br>" %> <!-- ������ �ּ��� ������. �������� ;ǥ�� ���� -->
<% } %>

<%! /* !�� ���̸� �������� ����. ���� this.msg�� �� �� �ִ�. */
	String msg = "���𹮿��� ����� msg";
	/* String getMsg() {
		return msg;
	} */
%>
</body>
</html>