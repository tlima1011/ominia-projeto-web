package br.com.omnia.draft.servico;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

public class MostraProdutoServico implements Servico{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String parametro = request.getParameter("codigo"); 
		if (parametro != null) { 
			Integer codigo = Integer.parseInt(request.getParameter("codigo")); 
			System.out.println("Buscando o produto..."); 
			Produto produto = new ProdutoDao().busca(codigo); 
			request.setAttribute("produto", produto); 
		} 
		return "cadastra-produto.jsp";
	}
}
