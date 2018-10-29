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
			<input type="hidden" name="acao" value="incluirMorador">
				<span class="contact100-form-title">
					Cadastro Morador
				</span>

				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Nome</span>
					<input class="input100" type="text" name="nome" class="form-control" placeholder="Nome">
					<span class="focus-input100"></span>				
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Cpf is required">
					<span class="label-input100">CPF</span>
					<input class="input100" type="text" name="cpf" class="form-control" placeholder="CPF">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Email</span>
					<input class="input100" type="text" name="email" placeholder="E-mail">
					<span class="focus-input100"></span>
				</div>
				<!-- 
				<div class="wrap-input100 validate-input" data-validate = "number is required">
					<span class="label-input100">N° Apartamento</span>
					<input class="input100" type="number" name="numApart" class="form-control" placeholder="N° Apartamento">
					<span class="focus-input100"></span>
				</div> -->
				
				<div class="wrap-input100 ">
					<span class="label-input100">Telefone Residencial</span>
					<input class="input100" type="text" name="telResidencial" class="form-control" placeholder="Telefone Residencial">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 ">
					<span class="label-input100">Telefone Comercial</span>
					<input class="input100" type="text" name="telComercial" class="form-control" placeholder="Telefone Comercial">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100">
					<span class="label-input100">Celular</span>
					<input class="input100" type="text" name="celular" class="form-control" placeholder="Celular">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "number is required">
					<span class="label-input100">Documento de propriedade</span><br>
					<input type="radio" name="doc" value="escritura"><span class="label-input100">Escritura</span><br>
					<input type="radio" name="doc" value="contratoCompra"><span class="label-input100">Contrato de Compra e Venda</span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "number is required">
					<span class="label-input100">Tipo de moradorador: </span><br>
					<input type="radio" name="morador" value="proprietario"><span class="label-input100">Proprietario</span><br>
					<input type="radio" name="morador" value="inquilino"><span class="label-input100">Inquilino</span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "number is required">
					<span class="label-input100">Veiculo</span>
					<input class="input100" type="text" name="veiculo" class="form-control" placeholder="Placa do Veiculo">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "password is required">
					<span class="label-input100">Senha</span>
					<input class="input100" type="password" name="senha" class="form-control" placeholder="senha">
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Submit
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>