<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sistema CRM</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
	integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="container" style="max-width:1000px">
		<h4>CRM/WEB - Cadastro de clientes</h4>
		<%@include file="navBar.jsp"%>
		
	<p style="color:green"><% 
		String mensagem = (String) request.getAttribute("mensagem");
		if (mensagem != null){
			out.println(mensagem);
		}
	%></p>

		<form action="cadastrar" method="post" class="row g-3 needs-validation cadastrarCliente" novalidate>
			<div class="col-md-6">
				<label for="validationCustom01" class="form-label">Nome completo:</label> 
				<%
					String nome = (String) request.getAttribute("nome");
						if (nome!=null){
							out.println(nome);
						}
				%>
			</div>
			<div class="col-md-2">
				<label class="form-label">CPF:</label> 
				<% 
				  String cpf = (String) request.getAttribute("cpf");
							if (cpf!=null){
								out.println(cpf);
							}
				%>
			</div>
			
			<div class="col-md-6">
				<label for="validationCustom03" class="form-label">E-mail:</label> 
				<% 
				  String email = (String) request.getAttribute("email");
							if (email!=null){
								out.println(email);
							}
				%>
			</div>
			<div class="col-md-2">
				<label for="validationCustom04" class="form-label">Telefone:</label> 
				<% 
				  String telefone = (String) request.getAttribute("telefone");
							if (telefone!=null){
								out.println(telefone);
							}
				%>
			</div>
			
			<div class="mb-3">
				<label for="validationCustom03" class="form-label">Data de Nascimento:</label> 
				<% 
				  String dataNasc = (String) request.getAttribute("dataNasc");
							if (dataNasc!=null){
								out.println(dataNasc);
							}
				%>
			</div>
			
			<div class="mb-3">
				<label>Gênero:</label>
				<% 
				  String genero = (String) request.getAttribute("genero");
							if (genero!=null){
								out.println(genero);
							}
				%>
			</div>
			
			<div class="mb-3">
			  <label for="textarea1" class="form-label">Endereço:</label>
			  <% 
				  String endereco = (String) request.getAttribute("endereco");
							if (endereco!=null){
								out.println(endereco);
							}
				%>
			</div>

		</form>
	</div>
</body>
</html>
