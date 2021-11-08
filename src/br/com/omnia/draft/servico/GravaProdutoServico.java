package br.com.omnia.draft.servico;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

public class GravaProdutoServico implements Servico {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String sCodigo = request.getParameter("codigo");
		String nome = request.getParameter("nome");
		Integer unidade = null; 
		Double valor = null;
		try {
			unidade = new Integer(request.getParameter("unidade")); 
			valor = new Double(request.getParameter("valor"));
		} catch (RuntimeException e) {
			throw new ServletException(e);
		} // Instanciação do Produto 
		Produto produto = new Produto(nome, unidade, valor); //Gravar no BD com o DAO 
		if (sCodigo == null || sCodigo.equals("")) { 
			new ProdutoDao().adiciona(produto);
		} else { 
			Integer codigo = Integer.parseInt(sCodigo); 
			produto.setCodigo(codigo); 
			new ProdutoDao().altera(produto); 
		} //retorna para o serviço de listar 
		return new ListaProdutosServico().executa(request, response);
	}
}
