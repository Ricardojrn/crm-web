<%@include file="index.jsp"%>

<div class="container" style="max-width:1000px">

	<p style="color:red"><% 
		String mensagem = (String) request.getAttribute("mensagem");
		if (mensagem != null){
			out.println(mensagem);
		}
	%></p>

	<form action="cadastrar" method="post" class="row g-3 needs-validation cadastrarCliente" novalidate>
		<div class="col-md-6">
			<label for="validationCustom01" class="form-label">Nome completo</label> 
			<input type="text" name="nome" class="form-control" id="validationCustom01" required>
		</div>
		<div class="col-md-2">
			<label class="form-label">CPF</label> 
			<input type="text" name="cpf" class="form-control" placeholder="Ex: 000.000.000-00">
		</div>
		
		<div class="col-md-6">
			<label for="validationCustom03" class="form-label">E-mail</label> 
			<input type="email" name="email" class="form-control" id="validationCustom03" placeholder="name@example.com" required>
		</div>
		<div class="col-md-2">
			<label for="validationCustom04" class="form-label">Telefone</label> 
			<input type="text" name="telefone" class="form-control" id="validationCustom04" required>
		</div>
		
		<div class="mb-3">
			<label for="validationCustom03" class="form-label">Data de Nascimento</label> 
			<input style="max-width:200px" type="date" name="dataNasc" class="form-control" id="validationCustom03" required>
		</div>
		
		<div class="mb-3">
		<label>Gênero</label>
			<div class="form-check">
				  <input class="form-check-input" type="radio" name="genero" value="masculino" id="flexRadioDefault1">
				  <label class="form-check-label" for="flexRadioDefault">
				    Masculino
				  </label>
			</div>
			<div class="form-check">
				  <input class="form-check-input" type="radio" name="genero" value="feminino" id="flexRadioDefault2">
				  <label class="form-check-label" for="flexRadioDefault">
				    Feminino
				  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="genero" value="não declarado" id="flexRadioDefault3">
			  <label class="form-check-label" for="flexRadioDefault">
			    Não declarar
			  </label>
			</div>
		</div>
		
		<div class="mb-3">
		  <label for="textarea1" class="form-label">Endereço</label>
		  <textarea style="max-width:500px" name="endereco" class="form-control" id="textarea1" rows="3"></textarea>
		</div>
		
		<button style="max-width:150px" type="submit" class="btn btn-primary">Salvar</button>
	</form>
</div>
