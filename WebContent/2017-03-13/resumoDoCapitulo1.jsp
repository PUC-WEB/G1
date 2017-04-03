<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

SEPARAÇÃO DO CODIGO HTML E JSP
==============================================================================
	<!--  aqui eu escrevo codigo HTML, Javascript, CSS) -->

	<%
		// Aqui eu escrevo codigo JAVA 
		//SOMENTE JAVA
	%>

	<!--  aqui eu escrevo codigo HTML, Javascript, CSS) -->

	Exemplo de JSP + HTML
	<%
		for (int i = 0; i < 4; i++) {
	%>
	<p>Alo mundo</p>

	<%
		}
	%>
	
	Ou so JSP
	<%
		for (int i = 0; i < 4; i++) {
		out.print("<p>Alo mundo (em JSP)<p>");
		}
	%>
================================================================================


SCRIPLETS
================================================================================
<%
 //Qualquer codigo em java, as variaveis vao ser locais
 //EX:
	 out.println("Your IP address is " + request.getRemoteAddr());
%>

<%!
 //A declaration declares one or more variables or methods
 //ou seja, (variaveis da calsse ou seja global)
 //EX:
  int i = 0; 
  int x, b, c; 
 //Circle a = new Circle(2.0);(esta como comentario pq nao tenho a classe circulo)
%>


<%--vamos chamar de 'a'
//A JSP expression element contains a scripting language expression 
//that is evaluated, converted to a String, and inserted where the
// expression appears in the JSP file
//EX: --%>

	<p>
    Today's date: a (new java.util.Date()).toLocaleString() a 
   </p>
   
<%--JSP COMENTARIOS --%>


================================================================================

HTML + CSS

<body>

</body>

<h1>Titulos da pagina</h1>

<p>paragrafos</p>

<p style="color: blue; background-color: yellow;">
O conteúdo desta tag será exibido em azul com fundo amarelo no navegador!
</p>

<ul>
<li>Primeiro item da lista</li>
<li>Segundo item da lista:
<ul>
<li>Primeiro item da lista aninhada</li>
<li>Segundo item da lista aninhada</li>
</ul>
</ul>

<div>Divisao do codigo html</div>

<table>
<tr>
<td>
tabelas
</td>
</tr>
</table>

</body>
</html>