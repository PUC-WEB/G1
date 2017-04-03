<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	//if(request.getParameter("username").equals("alexandre") &&
		//request.getParameter("password").equals("8572")){
	//antes de usar o parametro verificar se esta certo!(switch)
		//request.getRequestDispatcher(request.getParameter("selecionado") + ".jsp").forward(request,response);
	//}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Pagina de autentificação</h1>
	<p>Verificando o usuario</p>
	<p>Consultando o banco de dados...</p>
	<%!String opcao;%>

	<%
		out.print("Opcao = " + this.opcao);
		//this objeto da classe
	%>

	<a href="../home.html">home</a>

</body>
</html>