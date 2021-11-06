<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Codigo do produto</title>
</head>
<body>
	<form action="busca-produto.jsp" method="post" >
		<label>Digite o código do produto: </label>
		<input type="number" name="codigo" /> 
		<br/>
		<br/> 
		<input type="submit" value="Buscar" /> 
		<input type="reset" value="Reiniciar"/>  
	</form>
</body>
</html>