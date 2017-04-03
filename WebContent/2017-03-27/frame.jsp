<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String nick = request.getParameter("nick");
	if (nick == null || nick.length() == 0)
		request.getRequestDispatcher("./").forward(request, response);
	session.setAttribute("nick", nick);
	
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<frameset rows="*,70">
	<frame src="msg.jsp">
	<frame src="form.jsp">
</frameset>

</html>