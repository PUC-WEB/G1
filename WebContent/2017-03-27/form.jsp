<%@page import="java.util.ArrayList"%>
<%@page import="br.com.eric.Mensagem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
String nick = (String)session.getAttribute("nick");


%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>

<%
String texto = request.getParameter("texto");
List<Mensagem> listaMsg;
if(texto != null && texto.length() > 0){
	Mensagem msg = new Mensagem();
	msg.setNick(nick);
	msg.setTexto(texto);
	listaMsg = (List<Mensagem>)application.getAttribute("listaMsg");
	if(listaMsg == null){
		listaMsg = new ArrayList<Mensagem>();
	}
	listaMsg.add(msg);
	application.setAttribute("listaMsg", listaMsg);
}
%>

<form action="form.jsp">
<%=nick %>
<input type="text" name="texto">
<input type="submit" value="Vai!">
</form>
</body>
</html>