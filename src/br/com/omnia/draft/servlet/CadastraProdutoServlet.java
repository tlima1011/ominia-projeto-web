package br.com.omnia.draft.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.omnia.draft.dao.ProdutoDao;
import br.com.omnia.draft.model.Produto;

@WebServlet("/cadastraProduto")
public class CadastraProdutoServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PrintWriter out = response.getWriter(); 
		String nome = request.getParameter("nome"); 
		Integer unidade = null;
		Double valor = null; 
		try {
			unidade = new Integer(request.getParameter("unidade"));
			valor = new Double(request.getParameter("valor")); 
		}catch(RuntimeException e) {
			out.println("Erro de conversão de Valores inteiro e numerico"); 
			return; 
		}
		//Instanciação do Produto 
		Produto produto = new Produto(nome,unidade,valor); 
		//Gravar no banco de dados 
		new ProdutoDao().adiciona(produto); 
				
		out.println("<html><body><h3>"); 
		out.println("Produto: " +produto.getNome() +"Cadastrado com sucesso com codigo #" +produto.getCodigo()); 
		out.println("</h3></body></html>"); 
	}
}
