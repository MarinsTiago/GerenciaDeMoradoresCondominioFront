<%@page import="model.Morador"%>
<%@page import="java.util.List"%>
<%@page import="control.MoradorControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de moradores</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="<%=request.getContextPath() %>/css/estilo.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<%
	MoradorControl mc = new MoradorControl();
	List<Morador> moradores = mc.listar();
%>
<body>
	
	<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Moradores</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="<%=request.getContextPath()%>/incluirMorador.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Nome</th>
					<th>CPF</th>
					<th>Número do Apartamento</th>
				</thead>
				<tbody>
					<%
					if(moradores != null)
						for(Morador morador : moradores) {
					%>
					<tr>
						<td>
							<% out.print(morador.getNome()); %>
							</td>
							<td>
								<% out.print(morador.getCpf()); %>
							</td>
							<td>
								<% out.print(morador.getNumApart()); %>
							</td>
							<td class="mw-200">
								<a href="editarMorador.jsp?id=<%=morador.getId() %>"class="btn btn-primary">Editar</a>
								<a href="crudMorador.jsp?id=<%=morador.getId() %>&acao=excluirMorador" onclick="return confirmacaoDelecao()" class="btn btn-danger">Excluir</a>
							</td>
						</tr>
						<% } %>
					</tbody>
				
				</table>
		</div>
	</div>
</div>
	
</body>
</html>