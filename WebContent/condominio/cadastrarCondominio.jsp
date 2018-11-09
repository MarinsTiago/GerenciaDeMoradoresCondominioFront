<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form action="../condominio/crudCondominio.jsp" method="post" class="contact100-form validate-form">
				<input type="hidden" name="acao" value="incluirCondominio">
				<span class="contact100-form-title">
					Cadastro Condominio
				</span>
				
				<div class="wrap-input100 validate-input">
					<input id="first-name" class="input100" type="text" name="nome" placeholder="Nome">
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