<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	ORDEM DO EXERCICIO
	==============================================================================
	index - formulario identifica - pega o nome get identifica - guarda um
	nome em uma variavel (nome) identifica-guarda o nome como atributo de
	uma sessao outrapagina- recuperar o atributo da pagina identifica
	index-foward(caso ele ja tenha acessado o site) outrapagina-link para
	logout logout - ivalida a sessao applicattion- carrega a mensagem
	digitada no formulario
	=============================================================================


	PEGA O NOME ESCRITO NO FORMULARIO COM GET NA PROXIMA PAGINA ONDE O NOME É
	RECEBIDO POR PARAMETRO
	==============================================================================
	Oi,
	<%=request.getParameter("nome")
			//Como o nome foi enviado da outra pagina para essa, o nome vem como um parametro da pagina
			%>
	!!
	==============================================================================


	GUARDA O NOME EM UMA VARIAVEL PARA DEPOIS PASSALO PARA UM OBJETO DE
	SESSAO
	==============================================================================
	<%
	String nome;
	nome = request.getParameter("nome");//armazenou o nome enviado

	// atributo de sessao
	//primeiro parametro: nome do atributo
	//segundo parametro: objeto sendo salvo
	session.setAttribute("nome", nome); //pode passar um objeto como parametro
	//pode botar qualquer tipo de objeto nele
	%>
	==============================================================================


	RECUPERA O ATRIBUTO DA SESSAO PARA ACESSAR ELE NA PAGINA OUTRAPAGINA
	==============================================================================
	Oi
	<%=session.getAttribute("nome")%>!!
	==============================================================================


	CHECAR SE ELE TEM CADASTRO OU NAO, TENDO O CADASTRO JA PULA PARA
	OUTRAPAGINA FOWARD
	==============================================================================
	<%
	//Caso ele já tenha entrado no site e inciado uma sessao com seus atributos(nomes e msg) eu nao preciso que ele passe por essa pagina novamente
	// foward tem que estar antes te tudo!!!!!!!!!!!!!!
	// o getatribute devolve um objeto por isso tem que fazer um casting
	if (session.getAttribute("nome") != null && ((String) session.getAttribute("nome")).length() > 0) {
		request.getRequestDispatcher("outraPagina.jsp").forward(request, response);
	}
	%>
	==============================================================================


	FAZER LOGOUT DA SESSAO
	==============================================================================
	<%
	//DE PREFERENCIA NO FINAL DO CODIGO E EM CIMA DO /BODY
	session.invalidate();
	//invalida a sessao, tem que fazer o login de novo!
	%>
	==============================================================================


	USO DO APPLICATION COM A MENSAGEM DO FORMULARIO
	==============================================================================
	CLASSE MSG
	<%
	String msg = request.getParameter("msg");
	//armazenou a mensagem enviada

	//criar uma mesagem global para todas as paginas de todos os usuarios da aplicação
	application.setAttribute("msg", msg);
	%>

	E POR O PROXIMO CODIGO ONDE QUER QUE MOSTRE A MENSAGEM
	<%
	if (application.getAttribute("msg") != null && ((String) application.getAttribute("msg")).length() > 0) {
		out.print("Mensagem do dia: " + application.getAttribute("msg"));
	}
%>
	==============================================================================
	
	
	OBS
	==============================================================================
	1-
	<form action="identifica.jsp">
		Nome: <input type="text" name="nome"> <input type="submit"
			value="ID">
	</form>
	<!--Qual quer pagina depois dessa vai saber o nome do usuario  -->
	<!-- E vai passar o nome digitado na query string(url) pq nao tem post -->
	
	2-Cookie é um texto que o servidor manda para o cliente e cliente armazena
essa informação no seu hd, e toda vez que o cliente se conecta a esse servidor
 junto com o pedido com a url ele manda de volta todos os cookies que esse 
 servidor mandou pra ele. O servidor pode a cada cliente novo que chegar( como 
 é que ele sabe que o cliente é novo, ele sabe pq ele olha para os cookies e não
  ve nenhum) armazena do seu cookies de identificanção, o servidor com base nesse
   numero(id) ele pode começar a armazenar uma serie de informações sobre aquele 
   cliente
   
   3-objetos implicitos eu nao devo declarar nem inicializar( out., sessions.,...)
   
   4-a informação que o servidor manda para o cliente é um numero serial ele 
   nao vai mandar para o cliente o atributo, que esta armazenado no servidor, 
   quando o cliente mandar de volta esse numero o servidor vai pegar esse numero 
   e puxar a ficha desse numero(o que esta armazenado)
   
   5-eu posso verificar se a sessao é novo com isnew e invalidate invalida a sessao
   
   6-quando o cliente perde a sessao com o servidor , quando as janeals sao fechadas
quando o servidor perde a sessao para o cliente, por time out ou invalidate

7-O objeto Application foi criado para armazenar propriedades (valores) ligados 
a um conjunto de usuários. No caso, os visitantes do site, de um modo geral. 
Como exemplo, podemos citar o número total de visitantes no site a partir de 
uma determinada data, ou o número de visitantes online no site.

O objeto Session foi criado para armazenar propriedades (valores) ligados a 
cada visitante, individualmente. Como exemplo, podemos citar o carrinho de 
compras de um site de comércio online.
Uma Session é criada quando o visitante entra no site 
(cada visitante tem uma session e cada session recebe um ID), 
e é destruída quando o visitante sai do site (seja por logoff explícito
 ou por TimeOut). Já uma Application é iniciada ao haver o primeiro pedido 
 de acesso ao objeto Application, e é encerrado quando o servidor for desligado.
================================================================================



</body>
</html>