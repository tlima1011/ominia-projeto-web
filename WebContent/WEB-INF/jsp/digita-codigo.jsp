<%@ page import="java.util.*, br.com.omnia.draft.dao.*, br.com.omnia.draft.model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<c:import url="base.jsp" />
	<form action="busca-produto.jsp" method="post" > 
		<i>Digite o codigo do Produto:</i> 
		<input type="number" name="codigo" size=3 maxlength="3" min="1" placeholder="Informe"/> 
		<br/>
		<br/> 
		<input type="submit" value="Buscar"/>
		<input type="reset" value="Reiniciar"/> 
	</form>
<c:import url="rodape.jsp" />
