<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!-- 
Fa�a uma p�gina JSP que mostre a hora do �ltimo acesso por qualquer usu�rio e pelo usu�rio atual. Se nunca tiver sido acessada por ningu�m, deve mostrar a mensagem:
"Esta aplica��o nunca foi usada antes". Se � a primeira vez que est usu�rio espec�fico acessa a p�gina, a seguinte mensagem deve ser exibida: "Esta � a primeira vez que voc� usa esta aplica��o". -->
<body>
	<%
		int cont;
	
		try {
			cont = ((Integer) application.getAttribute("contador"));
		} catch (Exception e) {
			cont = 0;
			
		}
		cont++;
		if(cont==1){
			out.println(" Esta aplica��o nunca foi usada antes");
		}
		application.setAttribute("contador", new Integer(cont));
		if (session.isNew()) {
			out.println(" Esta � a primeira vez que voce usa essa aplicacao");
		} else {
	%>
	<p>Hora do ultimo acesso</p><%=new Date(session.getLastAccessedTime())%>
	
	<%
		}
	%>
	
</body>
</html>