<%@ page import="java.util.*, br.com.omnia.draft.dao.*, br.com.omnia.draft.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Busca Produto</title>
</head>
<body>
	<h5>Código do Produto: ${param.codigo}</h5> 
	<% Integer codigo = new Integer(request.getParameter("codigo")); 
	Produto produto = new ProdutoDao().busca(codigo); 
	if (produto != null) { %> 
	<h4>Nome do Produto: 
		<%=produto.getNome()%></h4> <% 
	} else { %> 
	<h4>Produto localizado!</h4> 
	<% } %>
</body>
</html>