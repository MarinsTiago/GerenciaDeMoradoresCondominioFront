<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form action="../proprietario/crudProprietario.jsp" method="POST" class="contact100-form validate-form">
		<div class="card">
			<div align="center" class="card-header">
	
	
				<input type="hidden" name="acao" value="incluirProprietario">	
				<input type="hidden" name="tipoUsuario" value="proprietario"><!--Não alterar este campo-->
				
				<span class="contact100-form-title"><h3>Cadastro Proprietário</h3></span>
			</div>
			<div class="card-body" align="center">
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
  <span class="input-label">First Name:</span><input type="text"  placeholder="First name" name="first_name" required> <br>
  <span class="input-label">Last Name:</span><input type="text" name="last_name"  placeholder="Last Name" required> <br>
  <span class="input-label">Account Number:</span><input type="text" name="number"  placeholder="account number" onkeypress="return justNumber(event)" required> <br>
  <span class="input-label">Security Number:</span><input type="text" name="security_number"  placeholder="security number" onkeypress="return justNumber(event)" required>
</div>
					
						<button class="contact100-form-btn">
						<span>
							Submit
							<i class="zmdi zmdi-arrow-right m-l-8"></i>
						</span>
					</button>
				</div>
				</div>
				</div>
				
			</form>
		</div>
	</div>
		<div id="dropDownSelect1"></div>

		<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>