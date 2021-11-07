<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Cadastro de Produtos</h1>
	<hr>
	<form action="cadastraProduto" method="post">
		<table>
			<tr> 
				<td>Nome: </td>
				<td><input type="text" name="nome" maxlength="50" placeholder="Informe nome do Produto"/></td>
			</tr>
			<tr>
				<td>Unidade:</td>
				<td><input type="number" name="unidade" size=22 maxlength="8" placeholder="Informe a quantidade"/></td>
			</tr>	
			<tr>
				<td>Valor:</td>
				<td><input type="number" name="valor" size=22 maxlength="7" step="0.01" pattern="^\d+(?:\.\d{1,2})?$" placeholder="Preço produto em R$"/></td>
			</tr>	
		</table>
		<br> 
		<input type = "submit" value="Salvar"/>
		<input type = "reset" value="Reiniciar"/>
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>