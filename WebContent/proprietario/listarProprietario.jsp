<%@page import="model.Proprietario"%>
<%@page import="java.util.List"%>
<%@page import="control.ProprietarioControl"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	ProprietarioControl pc = new ProprietarioControl();
	List<Proprietario> proprietarios = pc.listar(paginaAtual, limitePorPagina);
%>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Proprietarios</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="../proprietario/cadastroProprietario.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Login</th>
				</thead>
				<tbody>
					<%
					if(proprietarios != null)
						for(Proprietario proprietario : proprietarios) {
					%>
						<tr>
							<td>
							<% out.print(proprietario.getNome()); %>
							</td>
							<td class="mw-200">
								<a href="editarProprietario.jsp?id=<%=proprietario.getId() %>"class="btn btn-primary">Editar</a>
								<a href="crudProprietario.jsp?id=<%=proprietario.getId() %>&acao=excluirProprietario" onclick="return confirmacaoDelecao()" class="btn btn-danger">Excluir</a>
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
				<%if (proprietarios == null)
				         out.print("disabled");
			          else if (proprietarios.size() == 0)
				               out.print("disabled");%>
				class="btn btn-secondary btn-lg">Próxima Página</button>

		</div>
	</div>
</div>
<!-- INICIO PAGINAÇÃO PROPRIETARIO -->	
<script>
		function proximaPagina() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			location.href = "listarProprietario.jsp?pag=" + (parseInt(paginaAtual) + 1);
		}

		function paginaAnterior() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			if (parseInt(paginaAtual) > 1)
				location.href = "listarProprietario.jsp?pag=" + (parseInt(paginaAtual) - 1);
		}
</script>
<!--FIM PAGINAÇÃO PROPRIETARIO -->
</body>
</html>