<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%! String hora= "";
String min= "";
String sec= "";
String reportDate="";
%>



<%
//Create an instance of SimpleDateFormat used for formatting 
//the string representation of date (month/day/year)
DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

//Get the date today using Calendar object.
Date today = Calendar.getInstance().getTime();        
//Using DateFormat format method we can create a string 
//representation of a date with the defined format.
 reportDate = df.format(today);

Date date = new Date();
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("hora")) {
			 hora = cookie.getValue();
			//out.print(hora + ":");
		}
		
		if (cookie.getName().equals("sec")) {
			 sec = cookie.getValue();
			//out.print(sec );
		}
		if (cookie.getName().equals("min")) {
			 min = cookie.getValue();
			//out.print(min + ":");
		}
	
	}
	int hour = date.getHours();
	int minutes = date.getMinutes();
	int seconds = date.getSeconds();
	Cookie hora = new Cookie("hora", Integer.toString(hour));
	Cookie min = new Cookie("min", Integer.toString(minutes));
	Cookie sec = new Cookie("sec", Integer.toString(seconds));
	hora.setMaxAge(24 * 60 * 60);
	min.setMaxAge(24 * 60 * 60);
	sec.setMaxAge(24 * 60 * 60);
	hora.setSecure(false);
	min.setSecure(false);
	sec.setSecure(false);
	response.addCookie(hora);
	response.addCookie(min);
	response.addCookie(sec);
	//out.print(hour + ":" + min.getValue() + ":" + seconds);
	
	
}
else
{
	
	
	int hour = date.getHours();
	int minutes = date.getMinutes();
	int seconds = date.getSeconds();
	Cookie hora = new Cookie("hora", Integer.toString(hour));
	Cookie min = new Cookie("min", Integer.toString(minutes));
	Cookie sec = new Cookie("sec", Integer.toString(seconds));
	hora.setMaxAge(24 * 60 * 60);
	min.setMaxAge(24 * 60 * 60);
	sec.setMaxAge(24 * 60 * 60);
	hora.setSecure(false);
	min.setSecure(false);
	sec.setSecure(false);
	response.addCookie(hora);
	response.addCookie(min);
	response.addCookie(sec);
		//out.print(hour + ":" + min.getValue() + ":" + seconds);
	
		
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
	<%= hora%>:<%= min%>:<%= sec%>
	<br/>
	<%=reportDate %>
	
</body>
</html>