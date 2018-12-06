<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form class="contact100-form validate-form" action="../adm/crudAdmin.jsp" method="post">
			<input type="hidden" name="acao" value="incluirAdm">
				<input type="hidden" name="tipoUsuario" value="adm"> <!--NÃO ALTERAR ESTE CAMPO-->
		<div class="card4">
			<div align="center" class="card-header">
			
				<span class="contact100-form-title"><h3>Cadastro do ADM</h3></span>
			</div>
			<div class="card-body2" align="center">
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
  <span class="input-label"><h5>Nome:</h5></span><input type="text" style="color:blue;" name="nome" required> <br>
  <span class="input-label"><h5>Login:</h5></span><input type="text" style="color:blue;" name="login" required> <br>
  <span class="input-label"><h5>Senha:</h5></span><input type="password" style="color:blue;" name="senha"    required> <br>
  
	</div>
	</div>
	
	</div>			
				<div align="center" class="container-contact100-form-btn">
						<button style="background-color: #00BFFF"  class="contact100-form-btn">
							Submit
						</button>
								
					</div>
			
			</form>
		</div>
	</div>
	
	<div id="dropDownSelect1"></div>

	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>