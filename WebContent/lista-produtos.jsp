<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>...:::Lista de Produtos:::...</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1 align="center">Lista de Produtos</h1> 
	<table cellspacing="2" width="65%" align="center" table class="table-secondary"> 
		<thead align="left"><tr> 
			<th scope="col">Nome</th> 
			<th scope="col">Unidade</th> 
			<th scope="col">Valor</th> 
		</thead> 
		<jsp:useBean id="dao" class="br.com.omnia.draft.dao.ProdutoDao" /> 
			<c:forEach var="produto" items="${dao.lista}" varStatus="ln"> 
			<tr bgcolor="#${ln.count % 2 == 0 ? 'd4c5c5' : 'ffffff'}">
				<td>${produto.nome}</td> 
				<td>${produto.unidade}</td> 
				<td><fmt:formatNumber value="${produto.valor}" type="currency"/></td> 
			</tr> 
			</c:forEach> 
	</table>
	<c:import url="rodape.jsp" />
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>