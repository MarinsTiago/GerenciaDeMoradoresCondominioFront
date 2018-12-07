<%@include file="/estrutura/header.jsp"%>
<%@page import="model.Condominio"%>
<%@page import="java.util.List"%>
<%@page import="control.CondominioControl"%>
<%@page import="model.Porteiro"%>
<%@page import="control.PorteiroControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<div class="container">
	<div class="d-flex justify-content-center h-100">
<form action="../porteiro/crudPorteiro.jsp" method="POST">
<div class="card8">
<div class="col-lg-12">
	<input type="hidden" name="acao" value="editarPorteiro">
	<input type="hidden" name="tipoUsuario" value="porteiro"><!--Não alterar este campo-->
	<input type="hidden" name="id" value="<%=p.getId()%>">
	
	<div class="card-body4" align="center">
	Nome:<input type="text" style="color:blue;" name="nome" value="<%=p.getNome()%>"><br>
	CPF:<input type="text" style="color:blue;" name="cpf" value="<%=p.getCpf()%>"><br>
	Telefone:<input type="text" style="color:blue;" name="telefone" value="<%=p.getTelefone()%>"><br>
	Celular:<input type="text" style="color:blue;" name="celular" value="<%=p.getCelular()%>"><br>
	E-mail:<input type="email" style="color:blue;" name="email" value="<%=p.getEmail()%>"><br>
	Login:<input type="text" style="color:blue;" name="login" value="<%=p.getLogin()%>"><br>
	Senha:<input type="password" style="color:blue;" name="senha" value="<%=p.getSenha()%>"><br>
	
	
	  <div class="row">
  		
  		<div class="col col-md-6">
	<select  class="form-control" id="condominio"  name="condominio" style="height:2.5em;" >
			 <option>Selecione o Condominio</option>
		<%
			for(Condominio c: condominios){
				out.print("<option value='" + c.getId() + "'>"+ c.getNome() + "</option>");
			}	
		%>
	</select></div></div><br>
<input type="submit" class="btn btn-primary" value="Atualizar">
		<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">
		
	</div>
	</div>
	</div>

	</form>
	</div>
	</div>
</body>
</html>