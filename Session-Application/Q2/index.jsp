<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!-- Faça uma página com diversos links.Se o usuário tiver visitado recentemente um dos links, ao seu lado deverá ser exibida uma mensagem avisando-o. -->
<body>
<%
String msg="";
String msg2="";
if(session.getAttribute("selecionado")!=null)
{
	if(session.getAttribute("selecionado").equals("Primeira"))
	{
		 msg = "ultima pagina visitada pag 1";
	}
	else
	{
		 msg2 = "ultima pagina visitada pag 2";
	}
}
		
		%>

<h1>Páginas do meu site</h1>

<ul>
	<li><a href="link1.jsp?selecionado=Primeira">pag1</a></li>
	<% out.print(msg); %>
	<li><a href="link2.jsp?selecionado=Segunda">pag2</a></li>
	<% out.print(msg2); %>
</ul>


</body>
</html>