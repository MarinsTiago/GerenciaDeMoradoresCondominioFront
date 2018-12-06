<%@include file="/estrutura/header.jsp"%>
<%@page import="model.Condominio"%>
<%@page import="control.CondominioControl"%>
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
CondominioControl cc = new CondominioControl();
Condominio c = cc.buscarPorId(id);
%>
<body>

<div class="container">
	<div class="d-flex justify-content-center h-100">
<form action="../condominio/crudCondominio.jsp" method="POST">
<div class="card5">
<div class="col-lg-12">

	
	<input type="hidden" name="acao" value="editarCondominio">
	<input type="hidden" name="id" value="<%=c.getId()%>">
	
	
	<div class="card-body2" align="center">
<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
				
	<span class="input-label"><h3>Nome:</h3></span><br>
	<input type="text" style="color:blue;" name="nome" value="<%=c.getNome()%>"><br><br>
	
	
	<div align="center" class="container-contact100-form-btn">
						<input type="submit" class="btn btn-primary" value="Atualizar">
				<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">
					</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</form>
	</div>
	</div>
</body>
</html>