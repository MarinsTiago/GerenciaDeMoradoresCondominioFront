<%@include file="/estrutura/header.jsp"%>
<%@page import="model.Proprietario"%>
<%@page import="control.ProprietarioControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	long id = Long.parseLong(request.getParameter("id"));
	ProprietarioControl pc = new ProprietarioControl();
	Proprietario p = pc.buscarPorId(id);
%>
<body>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form action="../proprietario/crudProprietario.jsp" method="POST">
	<div class="card8">
<div class="col-lg-12">
	
	<input type="hidden" name="acao" value="editarProprietario">
	<input type="hidden" name="tipoUsuario" value="proprietario"><!--Não alterar este campo-->
	<input type="hidden" name="id" value="<%=p.getId()%>">
	
		<div class="card-body4" align="center">
	Nome:<input type="text" style="color:blue;" name="nome" value="<%=p.getNome()%>"><br>
	CPF:<input type="text" style="color:blue;" name="cpf" value="<%=p.getCpf()%>"><br>
	E-mail:<input type="email" style="color:blue;" name="email" value="<%=p.getEmail()%>"><br>
	Telefone:<input type="text" style="color:blue;" name="telefone" value="<%=p.getTelefone()%>"><br>
	Celular:<input type="text" style="color:blue;" name="celular" value="<%=p.getCelular()%>"><br>
	Login:<input type="text" style="color:blue;" name="login" value="<%=p.getSenha()%>"><br>
	Senha:<input type="password" style="color:blue;" name="senha" value="<%=p.getSenha()%>"><br>
	
			<input type="submit" class="btn btn-primary" value="Atualizar">
		<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">
		
					
	
	</div>
	</div>
	</div>
	</form>
	</div>
	</div>
</body>
</body>
</html>