<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:url value="/imagens" var="imagens" />
<img src="${imagens}/duke-java.png" width="80"/>
<div class="topnav">
	  <!-- Left-aligned links (default) -->
	  <a href="mvc?servico=ListaProdutosServico">Home</a>
	  <a href="mvc?servico=MostraProdutoServico">Cadastrar</a>
	  <a href="mvc?servico=BuscaProdutoServico">Buscar</a>
</div>