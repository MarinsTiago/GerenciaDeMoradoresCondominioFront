<%@page import="model.Condominio"%>
<%@page import="control.CondominioControl"%>
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
CondominioControl cc = new CondominioControl();
Condominio c = cc.buscarPorId(id);
%>
<body>
<form action="../condominio/crudCondominio.jsp" method="POST">
	<input type="hidden" name="acao" value="editarCondominio">
	<input type="hidden" name="id" value="<%=c.getId()%>">
	Nome:<br><input type="text" name="nome" value="<%=c.getNome()%>"><br>
	<input type="submit" value="Atualizar">
	</form>
</body>
</html>