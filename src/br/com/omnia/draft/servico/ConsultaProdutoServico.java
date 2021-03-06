package br.com.omnia.draft.servico;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

public class ConsultaProdutoServico implements Servico{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Connection connection = (Connection) request.getAttribute("conexao");
		
		Integer codigo = Integer.parseInt(request.getParameter("codigo")); 
		Produto produto = new Produto(); 
		produto.setCodigo(codigo); 
		System.out.println("Procurando o Produto..."); 
		new ProdutoDao(connection).busca(codigo);
		
		return "/WEB-INF/jsp/busca-produto.jsp";
	}
}
