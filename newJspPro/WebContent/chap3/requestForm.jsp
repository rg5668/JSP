<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- /WebContent/requestForm.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request ���� ��ü ����</title>
</head>
<body>
<h2>request ���尴ü : Ŭ���̾�Ʈ�� ��û ������ �����ϴ� ��ü</h2>
<!-- post�� ���� url�� �ȶ߰� �Ѵ�. -->
<!-- action="request1.jsp"�� ���� ������ �Ǿ���Ѵ� �̸��� ���ƾ��� -->
<form action="request1.jsp" method="post">
	<!-- <input type="hidden" value = "test" name = "test"> -->
	
	�̸�:<input type="text" name = "name"><br>
	
	����:<input type="text" name= "age"><br>
	
	����:<input type="radio" name= "gender" value="1">��
	 <input type="radio" name= "gender" value="2">��<br>
	
	���:<input type="checkbox" name= "hobby" value="�丮">�丮
	 <input type="checkbox" name= "hobby" value="����">����
	 <input type="checkbox" name= "hobby" value="�߱�">�߱�
	 <input type="checkbox" name= "hobby" value="�౸">�౸
	 <input type="checkbox" name= "hobby" value="����">����
	 <input type="checkbox" name= "hobby" value="����">����</br>
	
	�������: <select name = "year">
	<% for (int i=1980; i<2000; i++){ %>
		<option><%=i %></option>	
	<%	} %> 
	</select></br>
	<input type = "submit" value="����">
</form>
</body>
</html>