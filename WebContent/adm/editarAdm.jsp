<%@ include file="/../estrutura/header.jsp" %>
<%@page import="model.Administrador"%>
<%@page import="control.AdministradorControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	AdministradorControl ac = new AdministradorControl();
	long id = Long.parseLong(request.getParameter("id"));
	Administrador a = ac.buscarPorId(id);
%>
<body>

<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form action="../adm/crudAdmin.jsp" method="POST">
<div class="card7">
<div class="col-lg-12">

		<input type="hidden" name="acao" value="editarAdm">
		<input type="hidden" name="tipoUsuario" value="adm"> <!--NÃO ALTERAR ESTE CAMPO-->
		<input type="hidden" name="id" value="<%=a.getId()%>">
		
			<div class="card-body4" align="center">
		Nome:<input type="text" style="color:blue;" name="nome" value="<%=a.getNome()%>"><br>
		Login:<input type="text" style="color:blue;" name="login" value="<%=a.getLogin()%>"><br>
		Senha:<input type="text" style="color:blue;" name="senha" value="<%=a.getSenha()%>"><br>
		<input type="submit" value="Atualizar">
	</div>
	</div>
	</div>
	</form>
	</div>
	</div>

</body>
</html>