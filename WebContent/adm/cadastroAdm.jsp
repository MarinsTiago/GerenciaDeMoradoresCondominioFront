<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="../adm/crudAdmin.jsp" method="POST">
		<input type="hidden" name="acao" value="incluirAdm">
		<input type="hidden" name="tipoUsuario" value="adm">
		Nome:<input type="text" name="nome"><br>
		Login:<input type="text" name="login"><br>
		Senha:<input type="password" name="senha"><br>
		<input type="submit" value="Cadastrar">
	</form>

</body>
</html>