<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The WebCondo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util1.css">
	<link rel="stylesheet" type="text/css" href="../css/main1.css">
<!--===============================================================================================-->
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

<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
</body>
</html>