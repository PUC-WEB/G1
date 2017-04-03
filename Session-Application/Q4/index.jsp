<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!-- Faça uma página que possua um contador de acesso da sessao e da aplicação -->
<body>
<h1>Exemplo de contador com session e application</h1>
	<p>Conteúdo do meu site</p>
	<p>Entrada</p>
	<%
		int contadorLocal;

		synchronized (session) {
			try {
				contadorLocal = (Integer) session.getAttribute("conta");
			} catch (Exception e) {
				contadorLocal = 0;
			}
			contadorLocal++;
			session.setAttribute("conta", contadorLocal);
		}
		
		int contadorGlobal;

		synchronized (application) {
			try {
				contadorGlobal = (Integer) application.getAttribute("conta");
			} catch (Exception e) {
				contadorGlobal = 0;
			}
			contadorGlobal++;
			application.setAttribute("conta", contadorGlobal);
		}
		
	
	%>
	<br />
	<hr />
	As páginas desse site já foram carregadas
	<%=contadorLocal%>
	vezes por você.
	<br />
	As páginas desse site já foram carregadas
	<%=contadorGlobal%>
	vezes.
	
</body>
</html>