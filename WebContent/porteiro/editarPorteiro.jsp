<%@page import="model.Condominio"%>
<%@page import="java.util.List"%>
<%@page import="control.CondominioControl"%>
<%@page import="model.Porteiro"%>
<%@page import="control.PorteiroControl"%>
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
	PorteiroControl pc = new PorteiroControl();
	Porteiro p = pc.buscarPorId(id);
	CondominioControl cc = new CondominioControl();
	List<Condominio> condominios = cc.listarSemPage();
%>
<body>
<form action="../porteiro/crudPorteiro.jsp" method="POST">
	<input type="hidden" name="acao" value="editarPorteiro">
	<input type="hidden" name="tipoUsuario" value="porteiro"><!--Não alterar este campo-->
	<input type="hidden" name="id" value="<%=p.getId()%>">
	Nome:<input type="text" name="nome" value="<%=p.getNome()%>"><br>
	CPF:<input type="text" name="cpf" value="<%=p.getCpf()%>"><br>
	Telefone:<input type="text" name="telefone" value="<%=p.getTelefone()%>"><br>
	Celular:<input type="text" name="celular" value="<%=p.getCelular()%>"><br>
	E-mail:<input type="email" name="email" value="<%=p.getEmail()%>"><br>
	Login:<input type="text" name="login" value="<%=p.getLogin()%>"><br>
	Senha:<input type="text" name="senha" value="<%=p.getSenha()%>"><br>
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