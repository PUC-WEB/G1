<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("nick")) {
				session.setAttribute("nick",cookie.getValue());
				request.getRequestDispatcher("frame.jsp").forward(request, response);
				return;
			}
		
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sala de Chat</title>
</head>
<body>



	<h1>Sala de Chat</h1>

	<form action="frame.jsp" method="get">
		Nick: <input type="text" name="nick"> <input type="submit"
			value="Entrar">
	</form>


</body>
</html>