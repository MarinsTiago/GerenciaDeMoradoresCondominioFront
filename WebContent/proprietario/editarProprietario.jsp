<%@page import="model.Proprietario"%>
<%@page import="control.ProprietarioControl"%>
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
	ProprietarioControl pc = new ProprietarioControl();
	Proprietario p = pc.buscarPorId(id);
%>
<body>
<body>
	<form action="../proprietario/crudProprietario.jsp" method="POST">
	<input type="hidden" name="acao" value="editarProprietario">
	<input type="hidden" name="tipoUsuario" value="proprietario"><!--Não alterar este campo-->
	<input type="hidden" name="id" value="<%=p.getId()%>">
	Nome:<input type="text" name="nome" value="<%=p.getNome()%>"><br>
	CPF:<input type="text" name="cpf" value="<%=p.getCpf()%>"><br>
	E-mail:<input type="email" name="email" value="<%=p.getEmail()%>"><br>
	Telefone:<input type="text" name="telefone" value="<%=p.getTelefone()%>"><br>
	Celular:<input type="text" name="celular" value="<%=p.getCelular()%>"><br>
	Login:<input type="text" name="login" value="<%=p.getSenha()%>"><br>
	Senha:<input type="password" name="senha" value="<%=p.getSenha()%>"><br>
	<input type="submit" value="Atualizar">
	</form>
</body>
</body>
</html>