<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="../adm/crudAdmin.jsp" method="post">
				<input type="hidden" name="acao" value="incluirAdm">
				<input type="hidden" name="tipoUsuario" value="adm"> <!--NÃO ALTERAR ESTE CAMPO-->
				<span class="contact100-form-title">Cadastro ADM</span>
				
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="nome" placeholder="Nome">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 rs1 validate-input">
					<input class="input100" type="text" name="login" placeholder="Login">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 rs1 validate-input">
					<input class="input100" type="password" name="senha" placeholder="Senha">
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