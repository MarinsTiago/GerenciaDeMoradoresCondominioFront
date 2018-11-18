<%@page import="model.Morador"%>
<%@page import="control.MoradorControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	long id = Long.parseLong(request.getParameter("id"));
	MoradorControl mc = new MoradorControl();
	Morador m = mc.buscarPorId(id);

%>
<body>
	<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<div class="login">
			<form method="POST" action="crudMorador.jsp">
			  <input type="hidden" name="acao" value="editarMorador" >
			  <input type="hidden" name="tipoUsuario" value="morador"> <!--NÃO ALTERAR ESTE CAMPO-->
			  <input type="hidden" name="id" value="<%=m.getId()%>">
			  Nome:<br>
			  <input type="text" name="nome" class="form-control" value="<%=m.getNome() %>" >
			  <br>
			  CPF:<br>
			  <input type="text" name="cpf" class="form-control" value="<%=m.getCpf()%>">
			  <br>
			  E-mail:<br>
			  <input type="text" name="email" class="form-control" value="<%=m.getEmail()%>">
			  <br>
			  Telefone Residencial:<br>
			  <input type="text" name="telResidencial" class="form-control" value="<%=m.getTelefoneResidencial()%>"><br>
			  <br>
			  Telefone Comercial:<br>
			  <input type="text" name="telComercial" class="form-control" value="<%=m.getTelefoneComercial()%>"><br>
			  <br>
			  Celular:<br>
			  <input type="text" name="celular" class="form-control" value="<%=m.getCelular()%>"><br>
			  <br>
			  Tipo de Documento:<br>
			  <input type="text" name="doc" class="form-control" value="<%=m.getTipoDocumento()%>"><br>
			  <br>
			  Tipo de Morador:<br>
			  <input type="text" name="morador" class="form-control" value="<%=m.getTipoMorador()%>"><br>
			  <br>
			  Placa do Veículo:<br>
			  <input type="text" name="veiculo" class="form-control" value="<%=m.getPlacaVeiculo()%>"><br>
			  <br>
			  Login:<br>
			  <input type="text" name="login" class="form-control" value="<%=m.getLogin()%>"><br>
			  <br>
			  Senha:<br>
			  <input type="text" name="senha" class="form-control" value="<%=m.getSenha()%>"><br>
			  <br>
				<input type="submit" class="btn btn-primary" value="Salvar">
				<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">
			
			</form> 
		</div>
	</div>
	<div class="col-md-4"></div>
	</div>
</body>
</html>