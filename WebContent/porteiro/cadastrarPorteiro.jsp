<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="../porteiro/crudPorteiro.jsp" method="POST">
	<input type="hidden" name="acao" value="incluirPorteiro">
	Nome:<input type="text" name="nome"><br>
	CPF:<input type="text" name="cpf"><br>
	Telefone:<input type="text" name="telefone"><br>
	Celular:<input type="text" name="celular"><br>
	E-mail:<input type="email" name="email"><br>
	Senha:<input type="text" name="senha"><br>
	<input type="submit" value="Cadastrar">
	</form>
</body>
</html>