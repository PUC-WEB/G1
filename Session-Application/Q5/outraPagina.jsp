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
	Oi
	<%=session.getAttribute("nome")%>!!

	<p>
		<a href="logout.jsp">Link</a> para logout
	</p>

	<hr>
	<p>
		Essa pagina ja foi carregada
		<%
		//contagem na mesma sessao
		int contadorLocal;//nao precisa ficar na regiao critica
		synchronized (this) {
			try {
				contadorLocal = (int) session.getAttribute("contador");
			} catch (Exception e) {
				contadorLocal = 0;
			}

			if (session.getAttribute("contador") == null)
				contadorLocal = 1;
			else
				contadorLocal = (int) session.getAttribute("contador") + 1;

			session.setAttribute("contador", contadorLocal);
		}

		out.print(contadorLocal);
	%>
		vezes
	</p>

	<p>
		Essa pagina ja foi carregada
		<%
		//contagem na mesma sessao
		int contadorGlobal;//nao precisa ficar na regiao critica
		synchronized (this) {
			try {
				contadorGlobal = (int) application.getAttribute("contador");
			} catch (Exception e) {
				contadorGlobal = 0;
			}

			contadorGlobal++;
			application.setAttribute("contador", contadorGlobal);
		}

		out.print(contadorGlobal);
	%>
		vezes
	</p>



</body>
</html>