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
	int limitePorPagina = 4;
	int paginaAtual;
	if (request.getParameter("pag") != null)
		paginaAtual = Integer.parseInt(request.getParameter("pag"));
	else
		paginaAtual = 1;
%>
<%
	MoradorControl mc = new MoradorControl();
	List<Morador> moradores = mc.listar(paginaAtual, limitePorPagina);
%>
<body>
	
	
	<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Moradores</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="../morador/cadastroMorador.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Nome</th>
					<th>CPF</th>
					<th>Telefone Res</th>
					<th>Telefone Com</th>
					<th>Celular</th>
					<th>Tipo de Documento</th>
					<th>Tipo de Morador</th>
					<th>email</th>
					<th>Placa do ve�culo</th>
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
								<% out.print(morador.getTelefoneResidencial()); %>
							</td>
							<td>
								<% out.print(morador.getTelefoneComercial()); %>
							</td>
							<td>
								<% out.print(morador.getCelular()); %>
							</td>
							<td>
								<% out.print(morador.getTipoDocumento()); %>
							</td>
							<td>
								<% out.print(morador.getTipoMorador()); %>
							</td>
							<td>
								<% out.print(morador.getEmail()); %>
							</td>
							<td>
								<% out.print(morador.getPlacaVeiculo()); %>
							</td>
							<td class="mw-200">
								<a href="editarMorador.jsp?id=<%=morador.getId() %>"class="btn btn-primary">Editar</a>
								
								<div id="actions" class="row">
									<div class="col-md-12">
										<a   href="crudMorador.jsp?id=<%=morador.getId() %>&acao=excluirMorador" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
									</div>
								</div>
								
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
				class="btn btn-lg btn-primary">P�gina Anterior</button>
			<button onclick="proximaPagina()" type="button"
				<%if (moradores == null)
				         out.print("disabled");
			          else if (moradores.size() == 0)
				               out.print("disabled");%>
				class="btn btn-secondary btn-lg">Pr�xima P�gina</button>

			</div>
	</div>
</div>
<!--INCIO PAGINA��O MORADOR  -->
<script>
		function proximaPagina() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			location.href = "listarMoradores.jsp?pag=" + (parseInt(paginaAtual) + 1);
		}

		function paginaAnterior() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			if (parseInt(paginaAtual) > 1)
				location.href = "listarMoradores.jsp?pag=" + (parseInt(paginaAtual) - 1);
		}
</script>
<!--FIM PAGINA��O MORADOR  -->
	
	<!-- modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
        			
      			</div>
      			<div class="modal-body">
        			Deseja realmente excluir este item?
      			</div>
      			<div class="modal-footer">
        			<a onclick="return confirmacaoDelecao()" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
 					<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
      			</div>
    		</div>
  		</div>
	</div> <!-- /.modal -->
	
	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>