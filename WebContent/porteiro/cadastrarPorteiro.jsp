<%@page import="model.Condominio"%>
<%@page import="java.util.List"%>
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
	CondominioControl cc = new CondominioControl();
	List<Condominio> condominios = cc.listar();

%>

<body>
	<form action="../porteiro/crudPorteiro.jsp" method="POST">
	<input type="hidden" name="acao" value="incluirPorteiro">
	<input type="hidden" name="tipoUsuario" value="porteiro"><!--N�o alterar este campo-->
	Nome:<input type="text" name="nome"><br>
	CPF:<input type="text" name="cpf"><br>
	Telefone:<input type="text" name="telefone"><br>
	Celular:<input type="text" name="celular"><br>
	E-mail:<input type="email" name="email"><br>
	Login:<input type="text" name="login"><br>
	Senha:<input type="password" name="senha"><br>
	<select id="condominio" name="condominio">
			 <option>Selecione o Condominio</option>
		<%
			for(Condominio c: condominios){
				out.print("<option value='" + c.getId() + "'>"+ c.getNome() + "</option>");
			}	
		%>
	</select><br>
	<input type="submit" value="Cadastrar">
	</form>
</body>
</html>