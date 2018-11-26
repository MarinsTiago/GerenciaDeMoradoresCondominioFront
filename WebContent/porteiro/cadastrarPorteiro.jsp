<%@ include file="/estrutura/header.jsp"%>
<%@page import="model.Condominio"%>
<%@page import="java.util.List"%>
<%@page import="control.CondominioControl"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	CondominioControl cc = new CondominioControl();
	List<Condominio> condominios = cc.listarSemPage();
%>

<body>
	<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form action="../porteiro/crudPorteiro.jsp" method="POST" class="contact100-form validate-form">
		<input type="hidden" name="acao" value="incluirPorteiro"> <!--NÃO ALTERAR ESTE CAMPO-->
		<input type="hidden" name="tipoUsuario" value="porteiro"> <!--NÃO ALTERAR ESTE CAMPO-->
		<div class="card2">
			<div align="center" class="card-header">
	
	
				<input type="hidden" name="acao" value="incluirProprietario">	
				<input type="hidden" name="tipoUsuario" value="proprietario"><!--Não alterar este campo-->
				
				<span class="contact100-form-title"><h3>Cadastro Porteiro</h3></span>
			</div>
			<div class="card-body2" align="center">
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
  <span class="input-label"><h5>Nome:</h5></span><input type="text"   name="first_name" required> <br>
  <span class="input-label"><h5>CPF:</h5></span><input type="text" name="cpf"  onkeypress="return justNumber(event)" required> <br>
  <span class="input-label"><h5>Email:</h5></span><input type="text" name="email"   required> <br>
  <span class="input-label"><h5>Telefone:</h5></span><input type="text" name="telefone"   onkeypress="return justNumber(event)" required>
  <span class="input-label"><h5>Celular:</h5></span><input type="text" name="celular"   onkeypress="return justNumber(event)" required> <br>
  <span class="input-label"><h5>Login:</h5></span><input type="text" name="Login"    required> <br>
  <span class="input-label"><h5>Senha:</h5></span><input type="text" name="Senha"    required> <br>
  
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