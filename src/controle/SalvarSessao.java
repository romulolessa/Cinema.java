package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Sessao;

@WebServlet("/SalvarSessao")
public class SalvarSessao extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String titulo = request.getParameter("titulo");
		String data = request.getParameter("data");
		String inicio = request.getParameter("inicio");
		String termino = request.getParameter("termino");
		int sala = Integer.parseInt(request.getParameter("sala"));
		
		if(termino.compareTo(inicio) > 0) {
			Sessao sessao = new Sessao();
			
			sessao.setTitulo(titulo);
			sessao.setData(data);
			sessao.setInicio(inicio);
			sessao.setTermino(termino);
			sessao.setSala(sala);
			
			response.sendRedirect("Sucesso.jsp?titulo="+titulo+"&data="+data+"&inicio="+inicio+"&termino="+termino+"&sala="+sala);			
		}else {
			Sessao sessao = new Sessao();
			
			sessao.setTitulo(titulo);
			sessao.setData(data);
			sessao.setInicio(inicio);
			sessao.setTermino(termino);
			sessao.setSala(sala);
			
			response.sendRedirect("Erro.jsp?titulo="+titulo+"&data="+data+"&inicio="+inicio+"&termino="+termino+"&sala="+sala);			
		}
		
		
			}

}
