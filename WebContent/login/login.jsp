
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
			<div align="center" class="card-header">
				<div id="logo"></div>
				
				
				</div>
			<div class="card-body">
				
				<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="usuario" class="form-control" placeholder="usuario">
						
					</div>
			
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="senha" class="form-control" placeholder="senha">
					</div>
					
					
				
					<div align="center" class="container-login100-form-btn">
						<button style="background-color: #00BFFF"  class="login100-form-btn">
							Login
						</button>
					</div>
					
			</form>
			</div>
					<div class="text-center p-t-60" >
						<a style="color: #00BFFF" class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/porteiro/cadastrarPorteiro.jsp">
							Cadastro Porteiro |
						</a>
						<a style="color: #00BFFF" class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/morador/cadastroMorador.jsp">
							Cadastro Morador |
						</a>
						<a style="color: #00BFFF" class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/proprietario/cadastroProprietario.jsp">
							Cadastro Proprietario
						</a>
					</div>
				
			</div>
			<div class="card-footer">
			<div id="dropDownSelect1"></div>
	<%@ include file="/estrutura/footer.jsp"%>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>