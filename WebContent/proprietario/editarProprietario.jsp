<%@page import="model.ProprietarioApartamento"%>
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
	ProprietarioApartamento p = pc.buscarPorId(id);
%>
<body>
<body>
	<form action="../proprietario/crudProprietario.jsp" method="POST">
	<input type="hidden" name="acao" value="editarProprietario">
	<input type="hidden" name="id" value="<%=p.getId()%>">
	E-mail:<input type="email" name="email" value="<%=p.getEmail()%>"><br>
	Senha:<input type="password" name="senha" value="<%=p.getSenha()%>"><br>
	<input type="submit" value="Atualizar">
	</form>
</body>
</body>
</html>