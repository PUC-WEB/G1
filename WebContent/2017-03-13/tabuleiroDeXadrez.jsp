<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tabuleiro de Xadrez</title>
</head>
<body>

<h2>Faça uma página que mostre um tabuleiro de Xadrez</h2>

<table style="border-collapse: collapse; padding: 0;">
            <% for (int i = 0; i < 8; i++) {%>
            <tr>
                <%
                     for (int j = 0; j < 8; j++) {
                         if (i % 2 == j % 2) {
                %>
                              <td style="height: 30px; width: 30px; background-color: #AAAAAA">&nbsp;</td>
                <%       } else { %>
                              <td style="height: 30px; width: 30px; background-color: #333333">&nbsp;</td>
                <%       }
                    }%>
            </tr>
            <% }%>
        </table>
        <br/>
        <a href="../home.html">home</a>
</body>
</html>