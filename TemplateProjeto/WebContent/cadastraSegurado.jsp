<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	integrity="sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<style>
.html, .body {
	margin: 0
}
.medio {
	width: 20%;
}
</style>

<title>Formul�rio</title>
</head>
<body>
	<nav class="navbar navbar-light bg-secondary">
		<span class="navbar-brand mx-auto" href="#"> <img
			src="logo.png" width="50" height="50"
			class="d-inline-block align-top" alt="">
		</span>
	</nav>
	<div class="container">
		<div class="card mt-4 border-secondary">
			<h5 class="card-header text-center bg-secondary text-white">
				<a href="menu.jsp"
					class="text-decoration-none text-white"><i
					class="fas fa-arrow-left float-left"></i></a> CADASTRO
			</h5>
			<div class="card-body">
				<form class="p-3" method="post">
					<div class="form-group row ">
						<label for="nome"
							class="col-sm-1 col-form-label col-form-label-sm">NOME:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="nome" name="nome" placeholder="nome" type="text"
								value="${param.nome}">
						</div>
					</div>
					<div class="form-group row">
						<label for="cpf"
							class=" col-sm-1 col-form-label col-form-label-sm">CPF:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="cpf" name="cpf" placeholder="cpf" value="${param.cpf}">
						</div>
					</div>
					<div class="form-group row">
						<label for="rg" class=" col-sm-1 col-form-label col-form-label-sm">RG:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="rg" placeholder="rg" name="rg" value="${param.rg}">
						</div>
					</div>
					<hr>
					<h5 class="mt-4">G�NERO</h5>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="marcacao"
							id="masculino" value="Masculino"
							${param.marcacao == 'Masculino' ? 'checked' : ''}> <label
							class="form-check-label" for="masculino"> MASCULINO </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="marcacao"
							id="feminino" value="Feminino"
							${param.marcacao == 'Feminino' ? 'checked' : ''}> <label
							class="form-check-label" for="feminino"> FEMININO </label>
					</div>
					<hr>
					<h5 class="mt-2">CORRENTISTA</h5>

					<select class="custom-select mt-1 rounded-pill" name="correntista">
						<option value="Sim"
							${param.correntista == 'Sim' ? 'selected' : ''}>Sim</option>
						<option value="Nao"
							${param.correntista == 'Nao' ? 'selected' : ''}>N�o</option>
					</select>
					<h5 class="mt-2">DIA DA VISITA</h5>
					<select multiple class="custom-select mt-1 " name="visita">
						<option value="Segunda"
							${paramValues.visita.stream().anyMartch(v -> v == "Segunda").get() ? 'selected' : ''}>
							Segunda</option>
						<option value="Ter�a"
							${paramValues.visita.stream().anyMartch(v -> v == "Ter�a").get() ? 'selected' : ''}>Ter�a</option>
						<option value="Quarta"
							${paramValues.visita.stream().anyMartch(v -> v == "Quarta").get() ? 'selected' : ''}>Quarta</option>
						<option value="Quinta"
							${paramValues.visita.stream().anyMartch(v -> v == "Quinta").get() ? 'selected' : ''}>Quinta</option>
						<option value="Sexta"
							${paramValues.visita.stream().anyMartch(v -> v == "Sexta").get() ? 'selected' : ''}>Sexta</option>
						<option value="S�bado"
							${paramValues.visita.stream().anyMartch(v -> v == "S�bado").get() ? 'selected' : ''}>S�bado</option>
						<option value="Domingo"
							${paramValues.visita.stream().anyMartch(v -> v == "Domingo").get() ? 'selected' : ''}>Domingo</option>
					</select>
					<div class="text-center mt-4">
						<button type="submit" class="medio btn btn-secondary rounded-pill">CADASTRAR</button>
					</div>

				</form>
				<p class="alert alert-danger" role="alert">Erro teste</p>
			</div>
		</div>
	</div>
</body>
</html>