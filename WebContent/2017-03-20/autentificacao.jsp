<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%!String opcao;
	//o problema da variavel de classe é que eu nao sei quando vai passar o garbage collector%>

	<%
		opcao = request.getParameter("selecionado");
		out.print("Opcao = " + this.opcao);
	%>


	Clicou em
	<%=request.getParameter("selecionado")%>

	<form action="autentica.jsp" method="post">
		Username: 
		<input type="text" name="username"><br /> 
		Password:
		<input type="password" name="password"><br /> 
		<input type="submit" value="Entrar"> 
		<input type="hidden" name="selecionado" 
		value="<%=request.getParameter("selecionado")%>">
	</form>



</body>
</html>