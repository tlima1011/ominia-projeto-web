<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testando</title>
</head>
<body>
	<%-- Coment�rio: Esse JSP foi criado durante o curso de JavaWEB. IgorDEV: http://igordev.com.br --%> 
	<% String mensagem = "Ol�, essa � uma mensagem direto do servidor!"; 
		out.println(mensagem); 
	%> 
	<br/>
	<br/> 
	<% out.print("Exibindo a mensagem utilizando o atalho de sa�da:"); %> 
	<%=mensagem%> 
	<%System.out.println("** Isso vai sair no console! **"); 
	%>
</body>
</html>