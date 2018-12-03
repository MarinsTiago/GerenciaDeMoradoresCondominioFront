<%@include file="/estrutura/header.jsp"%>
<%@page import="model.Morador"%>
<%@page import="control.MoradorControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	long id = Long.parseLong(request.getParameter("id"));
	MoradorControl mc = new MoradorControl();
	Morador m = mc.buscarPorId(id);

%>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">

	<div class="login">
<form action="../morador/crudMorador.jsp" method="POST">
<div class="card3">
<div class="col-lg-12">
	<div class="row">
	
			  <input type="hidden" name="acao" value="editarMorador" >
			  <input type="hidden" name="tipoUsuario" value="morador"> <!--N�O ALTERAR ESTE CAMPO-->
			  <input type="hidden" name="id" value="<%=m.getId()%>">
			  
			  <div class="card-body2" align="center">
			  Nome:<br>
			  <input type="text" style="color:blue;" name="nome" class="form-control" value="<%=m.getNome() %>" >
			  <br>
			  CPF:<br>
			  <input type="text" style="color:blue;" name="cpf" class="form-control" value="<%=m.getCpf()%>">
			  <br>
			  E-mail:<br>
			  <input type="text" style="color:blue;" name="email" class="form-control" value="<%=m.getEmail()%>">
			  <br>
			  Telefone Residencial:<br>
			  <input type="text" style="color:blue;" name="telResidencial" class="form-control" value="<%=m.getTelefoneResidencial()%>"><br>
			  <br>
			  Telefone Comercial:<br>
			  <input type="text" style="color:blue;" name="telComercial" class="form-control" value="<%=m.getTelefoneComercial()%>"><br>
			  <br>
			  Celular:<br>
			  <input type="text" style="color:blue;" name="celular" class="form-control" value="<%=m.getCelular()%>"><br>
			  <br>
			  Tipo de Documento:<br>
			  <input type="text" style="color:blue;" name="doc" class="form-control" value="<%=m.getTipoDocumento()%>"><br>
			  <br>
			  Tipo de Morador:<br>
			  <input type="text" style="color:blue;" name="morador" class="form-control" value="<%=m.getTipoMorador()%>"><br>
			  <br>
			  Placa do Ve�culo:<br>
			  <input type="text" style="color:blue;" name="veiculo" class="form-control" value="<%=m.getPlacaVeiculo()%>"><br>
			  <br>
			  Login:<br>
			  <input type="text" style="color:blue;" name="login" class="form-control" value="<%=m.getLogin()%>"><br>
			  <br>
			  Senha:<br>
			  <input type="text" style="color:blue;" name="senha" class="form-control" value="<%=m.getSenha()%>"><br>
			  <br>
				<input type="submit" class="btn btn-primary" value="Atualizar">
				<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">
			</div>
			</div>
			</div>
			</div>
			
			</form> 
			</div>
			</div>
		</div>
	<div class="col-lg-12"></div>
	
</body>
</html>