<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	//Caso ele já tenha entrado no site e inciado uma sessao com seus atributos(nomes e msg) eu nao preciso que ele passe por essa pagina novamente
	// foward tem que estar antes te tudo!!!!!!!!!!!!!!
	// o getatribute devolve um objeto por isso tem que fazer um casting
	if (session.getAttribute("nome") != null && ((String) session.getAttribute("nome")).length() > 0) {
		request.getRequestDispatcher("outraPagina.jsp").forward(request, response);
	}
%>
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

	<form action="identifica.jsp">
		Nome: <input type="text" name="nome"> <input type="submit"
			value="ID">
	</form>
	<!--Qual quer pagina depois dessa vai saber o nome do usuario  -->
	<!-- Manda com o nome na query string(url) -->

	<form action="msg.jsp">
		Mensagem: <input type="text" name="msg"> <input type="submit"
			value="MSG">
	</form>

<a href="../home.html">home</a>
</body>
</html>