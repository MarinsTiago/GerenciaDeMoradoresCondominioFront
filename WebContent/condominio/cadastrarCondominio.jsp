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
	<form action="../condominio/crudCondominio.jsp" method="post" class="contact100-form validate-form">
				<input type="hidden" name="acao" value="incluirCondominio">
		<div class="card5">
			<div align="center" class="card-header">
	
				<span class="contact100-form-title"><h3>Cadastro Condomínio</h3></span>
			</div>
			<div class="card-body2" align="center">
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
				
				<span class="input-label"><h5>Nome:</h5></span><input type="text" name="name" required> <br>
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