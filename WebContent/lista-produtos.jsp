<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:import url="base.jsp"/> 
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