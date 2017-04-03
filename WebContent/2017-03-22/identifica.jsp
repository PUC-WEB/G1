<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String nome;
	nome = request.getParameter("nome");//armazenou o nome enviado

	// atributo de sessao
	//primeiro parametro: nome do atributo
	//segundo parametro: objeto sendo salvo
	session.setAttribute("nome", nome); //pode passar um objeto como parametro
	//pode botar qualquer tipo de objeto nele
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

	Oi,
	<%=request.getParameter("nome")
	//Como o nome foi enviado da outra pagina para essa, o nome vem como um parametro da pagina
	%>
	!!

	<p>
		<a href="outraPagina.jsp">Link</a> para OutraPagina
	</p>

</body>
</html>