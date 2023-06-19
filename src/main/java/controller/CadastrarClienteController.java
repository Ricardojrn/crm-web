package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CadastrarClienteController
 */
public class CadastrarClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarClienteController() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nomeCompleto = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String dataNascimento = request.getParameter("dataNasc");
		//String masculino = request.getParameter("genero");
		//String feminino = request.getParameter("genero");
		String genero = request.getParameter("genero");
		String endereco = request.getParameter("endereco");
		String mensagem = "";
		
		if (nomeCompleto != "" && cpf != "" && email != "" && telefone!= "" && 
				dataNascimento != "" && genero != "" && endereco != "") {
			mensagem = "Cadastro realizado com sucesso!";
			request.setAttribute("nome", nomeCompleto);
			request.setAttribute("cpf", cpf);
			request.setAttribute("email", email);
			request.setAttribute("telefone", telefone);
			request.setAttribute("dataNasc", dataNascimento);
			request.setAttribute("genero", genero);
			request.setAttribute("endereco", endereco);
			request.setAttribute("mensagem", mensagem);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("listar.jsp");
			dispatcher.forward(request, response);
		} else{
			mensagem = "Por favor, preencher todos os campos!";
			request.setAttribute("mensagem", mensagem);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("form.jsp");
		dispatcher.forward(request, response);
		}
		
	}

}
