<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:import url="base.jsp"/> 
<h1 align="center">Lista de Produtos</h1> 
<hr>
<table cellspacing="2" width="65%" align="center"> 
	<thead><tr> 
		<th>Nome</th> 
		<th>Unidade</th> 
		<th>Valor</th> 
	</thead> 
		<c:forEach var="produto" items="${produtos}" varStatus="ln"> 
			<tr bgcolor="#${ln.count % 2 == 0 ? 'd4c5c5' : 'ffffff'}">
				<td>${produto.nome}</td> 
				<td>${produto.unidade}</td> 
				<td><fmt:formatNumber value="${produto.valor}" type="currency"/></td> 
				<td><a href="mvc?servico=MostraProdutoServico&codigo=${produto.codigo}">Alterar</a> </td>
				<td><a href="mvc?servico=RemoveProdutoServico&codigo=${produto.codigo}">Remover</a> </td>
			</tr> 
		</c:forEach> 
	</table>
<c:import url="rodape.jsp" />