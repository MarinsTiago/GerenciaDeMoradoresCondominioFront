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

		<div class="card2">
			<div align="center" class="card-header">
	
		
		<input type="hidden" name="acao" value="incluirPorteiro"> <!--N�O ALTERAR ESTE CAMPO-->
		<input type="hidden" name="tipoUsuario" value="porteiro"> <!--N�O ALTERAR ESTE CAMPO-->
				
				<span class="contact100-form-title"><h3>Cadastro Porteiro</h3></span>
			</div>
			<div class="card-body2" align="center">
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
  <span class="input-label"><h5>Nome:</h5></span><input type="text" style="color:blue;"   name="nome" required> <br>
  <span class="input-label"><h5>CPF:</h5></span><input type="text" style="color:blue;" name="cpf"  onkeypress="return justNumber(event)" required> <br>
  <span class="input-label"><h5>Email:</h5></span><input type="text" style="color:blue;" name="email"   required> <br>
  <span class="input-label"><h5>Telefone:</h5></span><input type="text" style="color:blue;" name="telefone"   onkeypress="return justNumber(event)" required>
  <span class="input-label"><h5>Celular:</h5></span><input type="text" style="color:blue;" name="celular"   onkeypress="return justNumber(event)" required> <br>
  
  <br>
  
	  <div class="row">
  		
  		<div class="col col-md-6 center-block">
	<select  class="form-control" id="condominio"  name="condominio" style="height:2.5em;" >
			 <option>Selecione o Condominio</option>
		<%
			for(Condominio c: condominios){
				out.print("<option value='" + c.getId() + "'>"+ c.getNome() + "</option>");
			}	
		%>
	</select></div></div><br>
  <span class="input-label"><h5>Login:</h5></span><input type="text" style="color:blue;" name="login"    required> <br>
  <span class="input-label"><h5>Senha:</h5></span><input type="password" style="color:blue;" name="senha"    required> <br>
  
</div>


		</div>
		</div>
	<div align="left" class="container-contact100-form-btn">
	
	<a class="btn btn-primary" type="button" href="javascript:history.back()">Voltar a p�gina anterior</a>
			<button style="background-color: #00BFFF"  class="contact100-form-btn">
				Submit
				</button>
				
			
		
		</div>
		<br>
		</div>
		
		
	</form>
	</div>
</div>
	<div id="dropDownSelect1"></div>

	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>