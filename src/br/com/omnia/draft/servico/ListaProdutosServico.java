package br.com.omnia.draft.servico;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

public class ListaProdutosServico implements Servico{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Produto> produtos = new ProdutoDao().getLista(); 
		request.setAttribute("produtos", produtos); 
		return "/WEB-INF/jsp/lista-produtos.jsp";
	}
}
