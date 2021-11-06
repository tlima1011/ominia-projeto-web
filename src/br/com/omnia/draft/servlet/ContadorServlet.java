package br.com.omnia.draft.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contador")
public class ContadorServlet extends HttpServlet{
	
	private int contador = 0; 
		
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		++contador; 
		
		PrintWriter out = ((ServletResponse) req).getWriter(); 
		out.println("<html><body>"); 
		out.println("Valor do contador: " + contador); 
		out.println("</body></html>");
		
	}
	
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("Destruinod o Servlet");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init();
	}

	
	
	
	
	
	
	
}
