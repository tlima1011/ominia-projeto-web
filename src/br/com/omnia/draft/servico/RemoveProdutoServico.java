package br.com.omnia.draft.servico;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

public class RemoveProdutoServico implements Servico{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Connection connection = (Connection) request.getAttribute("conexao");
		
		Integer codigo = Integer.parseInt(request.getParameter("codigo")); 
		Produto produto = new Produto(); 
		produto.setCodigo(codigo); 
		System.out.println("Excluindo o Produto..."); 
		new ProdutoDao(connection).remove(produto);
		return new ListaProdutosServico().executa(request, response);
		//return "/WEB-INF/jsp/lista-produtos.jsp"; 
	}
}
		
	

