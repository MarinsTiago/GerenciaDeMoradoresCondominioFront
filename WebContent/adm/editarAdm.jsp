<%@page import="model.Administrador"%>
<%@page import="control.AdministradorControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	AdministradorControl ac = new AdministradorControl();
	long id = Long.parseLong(request.getParameter("id"));
	Administrador a = ac.buscarPorId(id);
%>
<body>
<form action="../adm/crudAdmin.jsp" method="POST">
		<input type="hidden" name="acao" value="editarAdm">
		<input type="hidden" name="tipoUsuario" value="adm"> <!--NÃO ALTERAR ESTE CAMPO-->
		<input type="hidden" name="id" value="<%=a.getId()%>">
		Nome:<input type="text" name="nome" value="<%=a.getNome()%>"><br>
		Login:<input type="text" name="login" value="<%=a.getLogin()%>"><br>
		Senha:<input type="text" name="senha" value="<%=a.getSenha()%>"><br>
		<input type="submit" value="Atualizar">
	
	</form>

</body>
</html>