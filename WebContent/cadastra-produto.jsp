<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mohave:wght@300&family=Montserrat:wght@100&family=Open+Sans:wght@300&family=Roboto:wght@100&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/4ac8cea6a6.js" crossorigin="anonymous"></script>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Cadastro de Produtos</h1>
	<hr>
	<form action="cadastraProduto" method="post">
	<div>
		<table class="table">
			<tr> 
				<td>Nome: </td>
				<td><input type="text" name="nome" maxlength="50" placeholder="Informe nome do Produto"/></td>
			</tr>
			<tr>
				<td>Unidade:</td>
				<td><input type="number" name="unidade" size=22 maxlength="8" placeholder="Informe a quantidade" min="1" max="200"/></td>
			</tr>	
			<tr>
				<td>Valor:</td>
				<td><input type="number" name="valor" size=22 maxlength="7" step="0.01" pattern="^\d+(?:\.\d{1,2})?$" min="1" placeholder="Preço produto em R$"/></td>
			</tr>	
		</table>
		<br> 
		<!-- Este é um comentário HTML -->
		<input type = "submit" value="Salvar"/>
		<input type = "reset" value="Reiniciar"/>
		<!--<button type="submit" class="btn btn-primary btn-sm" value="Salvar">Entrar</button>-->
        <!--<button type="reset" class="btn btn-secondary btn-sm" value="Reiniciar">Reiniciar</button>-->
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>