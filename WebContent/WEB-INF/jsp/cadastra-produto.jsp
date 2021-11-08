<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
	<c:import url="base.jsp" />
	<h1>Cadastro de Produtos</h1>
	<hr>
	<form action="mvc" method="post">
		<table class="table">
			<tr> 
				<td>Nome: </td>
				<td><input type="text" name="nome" maxlength="50" placeholder="Informe nome do Produto" value="${produto.nome}"/></td>
			</tr>
			<tr>
				<td>Unidade:</td>
				<td><input type="number" name="unidade" size=22 maxlength="8" placeholder="Informe a quantidade" min="1" max="200" value="${produto.unidade}"/></td>
			</tr>	
			<tr>
				<td>Valor:</td>
				<td><input type="number" name="valor" size=22 maxlength="7" step="0.01" pattern="^\d+(?:\.\d{1,2})?$" min="1" placeholder="Preço produto em R$" value="${produto.valor}"/></td>
			</tr>	
		</table>
	<input type = "submit" value="Salvar" onclick="alert('Produto salvo com sucesso!')"/>
	<input type = "reset" value="Reiniciar"/>
	<a href="mvc?servico=ListaProdutosServico">
		<input type = "button" value="Voltar"/>
	</a>
		<input type="hidden" name="codigo" value="${produto.codigo}" />
		<input type="hidden" name="servico" value="GravaProdutoServico" />
	</form>
	<c:import url="rodape.jsp" />