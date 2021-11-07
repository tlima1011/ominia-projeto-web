<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
	<c:import url="base.jsp" />
	<h1>Cadastro de Produtos</h1>
	<hr>
	<form action="cadastraProduto" method="post">
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
	<input type = "submit" value="Salvar"/>
	<input type = "reset" value="Reiniciar"/>
	</form>
	<c:import url="rodape.jsp" />