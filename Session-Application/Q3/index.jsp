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
Faça uma página JSP que mostre a hora do último acesso por qualquer usuário e pelo usuário atual. Se nunca tiver sido acessada por ninguém, deve mostrar a mensagem:
"Esta aplicação nunca foi usada antes". Se é a primeira vez que est usuário específico acessa a página, a seguinte mensagem deve ser exibida: "Esta é a primeira vez que você usa esta aplicação". -->
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
			out.println(" Esta aplicação nunca foi usada antes");
		}
		application.setAttribute("contador", new Integer(cont));
		if (session.isNew()) {
			out.println(" Esta é a primeira vez que voce usa essa aplicacao");
		} else {
	%>
	<p>Hora do ultimo acesso</p><%=new Date(session.getLastAccessedTime())%>
	
	<%
		}
	%>
	
</body>
</html>