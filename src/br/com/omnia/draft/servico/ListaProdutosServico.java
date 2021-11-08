package br.com.omnia.draft.servico;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

public class ListaProdutosServico implements Servico{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Connection connection = (Connection) request.getAttribute("conexao"); 
		
		List<Produto> produtos = new ProdutoDao(connection).getLista(); 
		request.setAttribute("produtos", produtos); 
		return "/WEB-INF/jsp/lista-produtos.jsp";
	}
}
