<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exercicio 1</title>
</head>
<body>

	<h2>
		Fa�a uma p�gina que mostre uma string em JSP, o valor de uma vari�vel,<br />
		um contador de acesso.
	</h2>

	<%
		out.print("<p>Alo mundo (em JSP)<p>");

		int a = 8752;// variavel local, por isso nao � incrementada pois a thread destroi ela no final e ela volta ao valor inicial

		for (int i = 0; i < 10; i++) {
			out.print(" " + i);
		}

		for (int i = 0; i < 4; i++) {
	%>
	<p>Alo mundo</p>

	<%
		}
	%>

	<%!//nao faz mais parte do metodo de servi�o, por causa da !
	int x = 2578;//x � global, entao � uma variavel compartilhada

	double quadrado(double x) {
		return x * x;
	}%>


	<%
		synchronized (this) {//sincroniza para que duas threads nao usem simultaneamente o comando
	%>
	<p>
		O valor de x �
		<%=x++%>.
	</p>
	<%
		}
	%>

	<p>
		Aqui eu tenho um texto HTML. E no meio desse texto eu quero mostrar o
		valor de uma vari�vel. O valor da vari�vel A �:<%=a++%>
	</p>

	<!--  aqui eu escrevo codigo HTML, Javascript, CSS) -->

	<a href="../home.html">home</a>

</body>
</html>