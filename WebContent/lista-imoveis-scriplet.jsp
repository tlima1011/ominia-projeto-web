<%@ page import="br.com.omnia.draft.dao.ProdutoDao" %>
<%@ page import="java.util.*, br.com.omnia.draft.dao.*, br.com.omnia.draft.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Produtos</title>
</head>
<body>
		<table cellspacing="2" width="70%"> 
			<thead align="left">
				<tr>
					<th>Nome</th> 
					<th>Unidade</th> 
					<th>Valor</th> 
				</tr>
			</thead> 
				<% List<Produto> produtos = new ProdutoDao().getLista(); 
				for (Produto i : produtos) {%> 
				<tr> 
					<td><%=i.getNome()%></td> 
					<td><%=i.getUnidade()%></td> 
					<td><%=i.getValor()%></td> 
					</td> 
				</tr> 
				<% } %> 
		</table>
</body>
</html>