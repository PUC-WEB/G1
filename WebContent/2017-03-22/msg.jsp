<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    String msg = request.getParameter("msg");
 	//armazenou a mensagem enviada
    
    //criar uma mesagem global para todas as paginas de todos os usuarios da aplicação
    application.setAttribute("msg", msg);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
if(application.getAttribute("msg") != null && ((String)application.getAttribute("msg")).length()>0){
	out.print("Mensagem do dia: " + application.getAttribute("msg"));
}
%>
</body>
</html>