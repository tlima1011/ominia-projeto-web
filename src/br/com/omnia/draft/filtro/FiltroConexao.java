package br.com.omnia.draft.filtro;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import br.com.omnia.draft.dao.ConnectionFactory;

@WebFilter("/*")
public class FiltroConexao implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		try {
			Connection connection = new ConnectionFactory().getConnection();
			// adiciona a conex�o no request
			request.setAttribute("conexao", connection);
			filterChain.doFilter(request, response);
			connection.close();
		} catch (SQLException ex) {
			throw new ServletException(ex);
		} // fim try/catch
	}// fim doFilter
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub }
	}
}
