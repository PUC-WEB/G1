<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    String campo1 = request.getParameter("email");
    String campo2 = request.getParameter("mensagem");
	if ((campo1 == null || campo1.length() == 0) && (campo2 == null || campo2.length() == 0))
		request.getRequestDispatcher("index.html").forward(request, response);
	else{
	session.setAttribute("email", campo1);
	session.setAttribute("mensagem", campo2);
	request.getRequestDispatcher("pag3.jsp").forward(request, response);
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>