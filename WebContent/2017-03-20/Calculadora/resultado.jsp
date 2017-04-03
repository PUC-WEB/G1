<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Calculadora</h1>

<%
int operando1 =0;
int operando2 =0;
if(request.getParameter("operando1") != null) {
	operando1 = Integer.parseInt(request.getParameter("operando1"));
	operando2 = Integer.parseInt(request.getParameter("operando2"));
}
%>
<form action="resultado.jsp" method="get">
<input type="text" name="operando1" 
	value='<%=request.getParameter("operando1")==null? "" : operando1%>'>
<select name="operador">
	
	<option value="-">Subtraido</option>
	<option value="x">Multiplicado</option>
	<option value="/">Dividido</option>
</select>
<input type="text" name="operando2"
	value='<%=request.getParameter("operando2")==null? "" : operando2%>'>
<input type="submit" value=" = ">
<input type="submit" name="operador" value="+" >
<%
if(request.getParameter("operando1") != null) {
	int resultado;
	String operador = request.getParameter("operador");
	
	if(operador.equals("+")) resultado = operando1 + operando2;
	else if(operador.equals("-")) resultado = operando1 - operando2;
	else if(operador.equals("x")) resultado = operando1 * operando2;
	else resultado = operando1 / operando2;
	out.print(resultado);
}
%>
</form>
</body>
</html>