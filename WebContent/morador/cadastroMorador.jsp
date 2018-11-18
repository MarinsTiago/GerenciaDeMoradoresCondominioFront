<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The WebCondo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="POST" action="../morador/crudMorador.jsp">
			<input type="hidden" name="acao" value="incluirMorador"> <!--NÃO ALTERAR ESTE CAMPO-->
			<input type="hidden" name="tipoUsuario" value="morador"> <!--NÃO ALTERAR ESTE CAMPO-->
				<span class="contact100-form-title">
					Cadastro Morador
				</span>

				
				<div class="wrap-input100 rs1 validate-input">
					<input id="first-name" class="input100" type="text" name="nome" placeholder="Nome">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs1 validate-input">
					<input class="input100" type="text" name="cpf" placeholder="CPF">
					<span class="focus-input100"></span>
				</div>

				
				<div class="wrap-input100 validate-input">
					<input id="email" class="input100" type="text" name="email" placeholder="example@email.com">
					<span class="focus-input100"></span>
				</div>

				
				<div class="wrap-input100 rs1">
					<input id="phone" class="input100" type="text" name="telResidencial" placeholder="TelResidencial">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 rs1">
					<input id="phone" class="input100" type="text" name="telComercial" placeholder="Telefone Comercial">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100">
					<input id="phone" class="input100" type="text" name="celular" placeholder="celular">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 rs1">
					<input type="radio" name="doc" value="escritura">Escritura
					<input type="radio" name="doc" value="contratoCompra">Contrato de Compra
				</div>

				<div class="wrap-input100 rs1">
					<input type="radio" name="morador" value="proprietario">Proprietario
					<input type="radio" name="morador" value="inquilino">Inquilino
				</div>

				<div class="wrap-input100 rs1">
					<input type="text" name="veiculo" class="input100" placeholder="Veiculo">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 rs1">
					<input type="text" name="login" class="input100" placeholder="Login">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100">
					<input type="password" name="senha" class="input100" placeholder="Senha">
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							<i class="zmdi zmdi-arrow-right m-l-8"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>