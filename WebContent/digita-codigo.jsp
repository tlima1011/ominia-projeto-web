<%@ page import="java.util.*, br.com.omnia.draft.dao.*, br.com.omnia.draft.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Codigo do produto</title>
</head>
<body>
	<form action="busca-produto.jsp" method="post" > 
		<i>Digite o codigo do Produto:</i> 
		<input type="number" name="codigo" size=3 maxlength="3"/> 
		<br/>
		<br/> 
		<input type="submit" value="Buscar"/>
		<input type="reset" value="Reiniciar"/> 
	</form>
</body>
</html>