<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%! 
String data= "";

%>

<%

Date date = new Date();
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("data")) {
			 data = cookie.getValue();
			//out.print(hora + ":");
		}
		
	
	}
	DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	Date today = Calendar.getInstance().getTime();        
	 String reportDate = df.format(today);
	Cookie data = new Cookie("data", reportDate);
	data.setMaxAge(24 * 60 * 60);
	data.setSecure(false);
	response.addCookie(data);
	
	
}
else
{
	DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	Date today = Calendar.getInstance().getTime();        
	String reportDate = df.format(today);
	Cookie data = new Cookie("data", reportDate);
	data.setMaxAge(24 * 60 * 60);
	data.setSecure(false);
	response.addCookie(data);
	
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!-- Faça um cookie de boas vindas que informe ao usuário quando foi a última vez(data e hora que ele visitou a página. -->
<body>
	<h1></h1>
	<p>Ultimo Acesso</p>
	<%=data %>
	<br/>
	
	
</body>
</html>