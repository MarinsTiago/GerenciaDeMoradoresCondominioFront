<%@page import="model.Morador"%>
<%@page import="model.Apartamento"%>
<%@page import="java.util.List"%>
<%@page import="control.ApartamentoControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="/css/estilo.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<%
	ApartamentoControl ac = new ApartamentoControl();
	List<Apartamento> apartamentos = ac.listar();
%>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Apartamentos</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="../apartamento/cadastrarApartamento.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Bloco</th>
					<th>Número</th>
					<th>Morador</th>
					<th>Proprietario</th>
					<th>Ocupado</th>
				</thead>
				<tbody>
					<%
					if(apartamentos != null)
						for(Apartamento apartamento : apartamentos) {
					%>
					<tr>
						<td>
							<% out.print(apartamento.getBloco());%>
						</td>
						<td>
							<% out.print(apartamento.getNumero());%>
						</td>
						<td>
							<% 
								if(apartamento.getMorador() == null){
									out.print("Vazio");
								}else{
									out.print(apartamento.getMorador().getNome());
								}
							%>
						</td>
						<td>
							<% out.print(apartamento.getProprietario().getNome());%>
						</td>
						<td>
							<% 
									if(apartamento.getOcupado().equals("nao")){	
										out.print("NÃO");
									}else if(apartamento.getOcupado().equals("sim")){
										out.print("SIM");
									}
							
							%>
						</td>
						<td class="mw-200">
							<a href="editarApartamento.jsp?id=<%=apartamento.getId() %>"class="btn btn-primary">Editar</a>
							<a href="crudApartamento.jsp?id=<%=apartamento.getId() %>&acao=excluirApartamento" onclick="return confirmacaoDelecao()" class="btn btn-danger">Excluir</a>
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