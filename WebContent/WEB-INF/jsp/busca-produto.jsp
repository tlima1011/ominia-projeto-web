<%@ page import="java.util.*, br.com.omnia.draft.dao.*, br.com.omnia.draft.model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, br.com.omnia.draft.dao.*, br.com.omnia.draft.model.*" %>
	<c:import url="base.jsp" />
	<h4>Código do Produto: ${param.codigo}</h4> 
	<% Integer codigo = new Integer(request.getParameter("codigo")); 
	Produto produto = new ProdutoDao().busca(codigo); 
	if (produto != null) { %> 
	<h4 style="color:blue">Nome do Produto: 
		<%=produto.getNome()%></h4> <% 
	} else { %> 
	<p style="color:red">Produto Não Localizado!</p> 
	<% } %>
<c:import url="rodape.jsp" />
