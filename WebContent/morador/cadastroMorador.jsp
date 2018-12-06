<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The WebCondo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	
	<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form action="../morador/crudMorador.jsp" method="POST" class="contact100-form validate-form">
		<div class="card3">
			<div align="center" class="card-header">
	
	
				<input type="hidden" name="acao" value="incluirMorador">	
				<input type="hidden" name="tipoUsuario" value="morador"><!--Não alterar este campo-->
				
				<span class="contact100-form-title"><h3>Cadastro Morador</h3></span>
			</div>
			<div class="card-body2" align="center">
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
  <span class="input-label"><h5>Nome:</h5></span><input type="text" style="color:blue;"   name="nome" required> <br>
  <span class="input-label"><h5>CPF:</h5></span><input type="text" style="color:blue;" name="cpf"   onkeypress="return justNumber(event)" required> <br>
  <span class="input-label"><h5>Email:</h5></span><input type="text" style="color:blue;" name="email"   required> <br>
  <span class="input-label"><h5>Veiculo:</h5></span><input type="text" style="color:blue;" name="veiculo"   required> <br>
  <span class="input-label"><h5>Telefone:</h5></span><input type="text" style="color:blue;" name="telResidencial"   onkeypress="return justNumber(event)" required>
  <span class="input-label"><h5>Celular:</h5></span><input type="text" style="color:blue;" name="celular"   onkeypress="return justNumber(event)" required> <br>
  <span class="input-label"><h5>Login:</h5></span><input type="text" style="color:blue;" name="login"    required> <br>
  <span class="input-label"><h5>Senha:</h5></span><input type="password" style="color:blue;" name="senha"   required> <br>
  <span class="input-label2"><h5>Escritura</h5></span><input type="radio" style="color:blue;" name="doc" value="escritura">
  <span class="input-label2"><h5>Contrato de compra</h5></span><input type="radio" style="color:blue;" name="doc" value="contratoCompra">
  <span class="input-label2"><h5>Inquilino</h5></span><input type="radio" style="color:blue;" name="morador" value="inquilino">
  <span class="input-label2"><h5>Proprietario</h5></span><input type="radio" style="color:blue;" name="morador" value="proprietario">
</div>		
				</div>
			
				</div>
					<div align="center" class="container-contact100-form-btn">
						<button style="background-color: #00BFFF"  class="contact100-form-btn">
							Submit
						</button>
					</div>
					</div>
					
					<div align="center">
						<a class="btn btn-primary" type="button" href="javascript:history.back()">Voltar a página anterior</a>
					</div>
			</form>
		</div>
	</div>

	<div id="dropDownSelect1"></div>

	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>