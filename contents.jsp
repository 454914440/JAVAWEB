<%@ page contentType="text/html;charset=GBK" %>
<%@include file="checkvalid.jsp"%>
<HTML>
	<head>
		<title>�û�������Ϣ</title>
	</head>

	<body>
<form   name="login" method="post" action="indexjsp.jsp">
<p>�û�������Ϣ��</p>
<p><textarea name="message" rows="4" cols="60" ></textarea></p>
<input type="submit" name="submit" value="�ύ" ><!--onClick="return checkvalid2()"-->
</form>
<a href="main.jsp">������һҳ</a>
<a href="logout.jsp">ע��</a>
	</body>
</HTML>