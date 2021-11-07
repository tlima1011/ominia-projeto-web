<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>...:::Lista de Produtos:::...</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Lista de Produtos</h1> 
	<table cellspacing="2" width="70%"> 
		<thead align="left"><tr> 
			<th>Nome</th> 
			<th>Unidade</th> 
			<th>Valor</th> 
		</thead> 
		<jsp:useBean id="dao" class="br.com.omnia.draft.dao.ProdutoDao" /> 
			<c:forEach var="produto" items="${dao.lista}" varStatus="ln"> 
			<tr bgcolor="#${ln.count % 2 == 0 ? '9c9c9c' : 'ffffff'}">
				<td>${produto.nome}</td> 
				<td>${produto.unidade}</td> 
				<td>${produto.valor}</td> 
			</tr> 
			</c:forEach> 
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>