<%@page import="model.Porteiro"%>
<%@page import="java.util.List"%>
<%@page import="control.PorteiroControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de Porteiros</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="<%=request.getContextPath() %>/css/estilo.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<%
	int limitePorPagina = 4;
	int paginaAtual;
	if (request.getParameter("pag") != null)
		paginaAtual = Integer.parseInt(request.getParameter("pag"));
	else
		paginaAtual = 1;
%>
<%
	PorteiroControl pc = new PorteiroControl();
	List<Porteiro> porteiros = pc.listar(paginaAtual, limitePorPagina);
%>
<body>
	<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Porteiros</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="../porteiro/cadastrarPorteiro.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Nome</th>
					<th>CPF</th>
					<th>Telefone</th>
					<th>E-mail</th>
					<th>Condomínio de Atuação</th>
				</thead>
				<tbody>
					<%
					if(porteiros != null)
						for(Porteiro porteiro : porteiros) {
					%>
						<tr>
							<td>
							<% out.print(porteiro.getNome()); %>
							</td>
							<td>
								<% out.print(porteiro.getCpf()); %>
							</td>
							<td>
								<% out.print(porteiro.getTelefone()); %>
							</td>
							<td>
								<% out.print(porteiro.getEmail()); %>
							</td>
							<td>
								<% out.print(porteiro.getCondominio().getNome()); %>
							</td>
							<td class="mw-200">
								<a href="editarPorteiro.jsp?id=<%=porteiro.getId() %>"class="btn btn-primary">Editar</a>
								<a href="crudPorteiro.jsp?id=<%=porteiro.getId() %>&acao=excluirPorteiro" onclick="return confirmacaoDelecao()" class="btn btn-danger">Excluir</a>
							</td>
						</tr>
						<% } %>
					</tbody>
				
				</table>
		</div>
		<div class="col-md-12 text-center">

			<button onclick="paginaAnterior()" type="button"
				<%if (paginaAtual == 1)
				         out.print("disabled"); %>
				class="btn btn-lg btn-primary">Página Anterior</button>
			<button onclick="proximaPagina()" type="button"
				<%if (porteiros == null)
				         out.print("disabled");
			          else if (porteiros.size() == 0)
				               out.print("disabled");%>
				class="btn btn-secondary btn-lg">Próxima Página</button>

			</div>
	</div>
</div>
<script>
		function proximaPagina() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			location.href = "listarPorteiro.jsp?pag=" + (parseInt(paginaAtual) + 1);
		}

		function paginaAnterior() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			if (parseInt(paginaAtual) > 1)
				location.href = "listarPorteiro.jsp?pag=" + (parseInt(paginaAtual) - 1);
		}
</script>
</body>
</html>