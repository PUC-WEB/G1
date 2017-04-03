<%@page import="java.util.ArrayList"%>
<%@page import="br.com.eric.Mensagem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="5">
<title>Insert title here</title>
</head>
<body>
<h1>Mensagens</h1>

<%
List<Mensagem> listaMsg = (ArrayList<Mensagem>)application.getAttribute("listaMsg");
if(listaMsg != null){
	out.print("<table><tr><td>Nick</td><td>Texto</td></tr>");
	//conteudo da tabela
	for(Mensagem msg: listaMsg){
		out.print("<tr><td>" + msg.getNick() + "</td>");
		out.print("<td>" + msg.getTexto() + "</td></tr>");
	}
	out.print("</table>");
}
%>

</body>
</html>