<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Pag 1</h1>
<%



	Cookie selecionado = new Cookie("selecionado", request.getParameter("selecionado"));
	selecionado.setMaxAge(24 * 60 * 60);
	selecionado.setSecure(false);
	response.addCookie(selecionado);
	
	
	
		

%>

<a href="index.jsp">home</a>
</body>
</html>