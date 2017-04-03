<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String msg="";
String link="";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("selecionado")) {
			link = cookie.getValue();
			if(link.equals("Primeira"))
				msg="ultima pagina visitada pag1";
			else
				msg="ultima pagina visitada pag2";
			
		}
	
	}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!-- Faça uma página com diversos links.Se o usuário tiver visitado recentemente um dos links, ao seu lado deverá ser exibida uma mensagem avisando-o. -->
<body>


<h1>Páginas do meu site</h1>

<%=msg %>
<ul>
	<li><a href="link1.jsp?selecionado=Primeira">pag1</a></li>
	<li><a href="link2.jsp?selecionado=Segunda">pag2</a></li>
	
</ul>

<table border="2">
<tr><th>Nome do Cookie</th><th>Valor do Cookie</th><tr>
<%
Cookie[] cookiess = request.getCookies();
if(cookiess == null)
	out.print("<tr><td colspan='2' align='center'>Sem cookies</td></tr>");
else{
	for(Cookie cookie : cookiess)
	{
		out.print("<tr><td>" + cookie.getName() + "</td>");
		out.print("<td>" + cookie.getValue() + "</td></tr>");
		}
	}
%>

<%
int nVezes=0;
boolean calouro = true;
String titulo ="Bem vindo de volta";
Cookie[] c = request.getCookies();
if(c != null)
{
	for(Cookie cookie : cookies)
		if(cookie.getName().equals("novo") )
		{
			calouro = false;
			nVezes = Integer.parseInt(cookie.getValue());
			break;
			}
	
	if(calouro)
	{
		nVezes+=1;
		Cookie cookie = new Cookie("novo", Integer.toString(nVezes));
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
		titulo ="Bem vindo a bordo!";
		
	}
}
%>
Esta pagina ja foi carregada  <%=nVezes%> vez(es).
<%= titulo %>
</table>
</body>
</html>