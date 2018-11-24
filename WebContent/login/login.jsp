
<%@ include file="/estrutura/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>WebCondo</title>
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form class="login100-form validate-form" id="Login" method="POST" action="../login/controleLogin.jsp">
		<div class="card">
			<div class="card-header">
				<h3>WebCondo</h3>
				</div>
			<div class="card-body">
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
					<div class="wrap-input100 validate-input" data-validate = "insira um email válido">
						<input type="text" class="form-control" placeholder="usuario">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input id="senha" class="input-100" type="password" class="form-control" placeholder="Senha">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
						</div>
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
					
					<div class="text-center p-t-60">
						<a class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/porteiro/cadastrarPorteiro.jsp">
							Cadastre-se Porteiro |
						</a>
						<a class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/morador/cadastroMorador.jsp">
							Cadastre-se Morador |
						</a>
						<a class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/proprietario/cadastroProprietario.jsp">
							Cadastre-se Proprietario
						</a>
					</div>
				
			</div>
			<div class="card-footer">
			<div id="dropDownSelect1"></div>
	<%@ include file="/estrutura/footer.jsp"%>
			</div>
		</div>
		</form>
	</div>
</div>
</body>
</html>