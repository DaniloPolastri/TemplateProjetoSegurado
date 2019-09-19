<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	integrity="sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9"
	crossorigin="anonymous">
<title>Cadastra seguro</title>

<style>
.html, .body {
	margin: 0
}

.medio {
	width: 20%;
}
</style>
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
				<a href="menu.jsp" class="text-decoration-none text-white"><i
					class="fas fa-arrow-left float-left"></i></a> CADASTRA SEGURO
			</h5>
			<div class="card-body">
				<form class="p-3" method="post">
					<h5 class="mt-2">SEGURO</h5>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Auto"
							name="seguro" id="auto"
							${paramValues.seguro.stream().anyMatch(v->v == 'Auto').get() ? 'checked' : ''}>
						<label class="form-check-label" for="auto"> AUTO </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"
							value="Residencial" name="seguro" id="residencial"
							${paramValues.seguro.stream().anyMatch(v->v == 'Residencial').get() ? 'checked' : ''}>
						<label class="form-check-label" for="residencial">
							RESIDENCIAL </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Vida"
							name="seguro" id="vida"
							${paramValues.seguro.stream().anyMatch(v->v == 'Vida').get() ? 'checked' : ''}>
						<label class="form-check-label" for="vida"> VIDA </label>
					</div>
					<div class="form-group row mt-3">
						<label for="cpf"
							class=" col-sm-1 col-form-label col-form-label-sm">VALOR:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="cpf" name="cpf" placeholder="cpf" value="${param.cpf}">
						</div>
					</div>
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