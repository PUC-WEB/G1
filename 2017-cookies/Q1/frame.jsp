<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	//Se exitir parametro, será a primeira visita, então cria-se um cookie e a sessao
	//Se não existir parametro, será a segunda visita ou nao , verifico se a sessao existe ou nao
	// caso nao exista faço um foward para home
	if (request.getParameter("nick") != null) {
		Cookie name = new Cookie("nick", request.getParameter("nick"));
		name.setMaxAge(24 * 60 * 60);
		name.setSecure(false);
		response.addCookie(name);
		String nick = request.getParameter("nick");
		session.setAttribute("nick", nick);
		}
	else{
		if(session.getAttribute("nick")==null)
			request.getRequestDispatcher("./").forward(request, response);
			
	}

	
//	if (nick == null || nick.length() == 0)
		//request.getRequestDispatcher("./").forward(request, response);
	
	//CRIAR O COOKIE

	//Cookie name = new Cookie("nick", request.getParameter("nick"));

	//name.setMaxAge(24 * 60 * 60);

	//name.setSecure(false);

	//response.addCookie(name);
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


