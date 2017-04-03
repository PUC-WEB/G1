<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		if (application.getAttribute("msg") != null && ((String) application.getAttribute("msg")).length() > 0) {
			out.print("Mensagem do dia: " + application.getAttribute("msg"));
		}
	%>

	<a href="./">Home</a>

	<!-- Qualquer codigo tem que ser antes do invalidade -->
	
	<%
		session.invalidate();
		//invalida a sessao, tem que fazer o login de novo!
	%>
</body>
</html>