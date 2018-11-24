<%@page import="model.Morador"%>
<%@page import="model.Apartamento"%>
<%@page import="java.util.List"%>
<%@page import="control.ApartamentoControl"%>
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
	ApartamentoControl ac = new ApartamentoControl();
	List<Apartamento> apartamentos = ac.listar(paginaAtual, limitePorPagina);
%>
<body>

<!-- modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
        			
      			</div>
      			<div class="modal-body">
        			Deseja realmente excluir este item?
      			</div>
      			<div class="modal-footer">
        			<a href="" id="delRef" class="btn btn-danger">Excluir</a>
 					<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
      			</div>
    		</div>
  		</div>
	</div> <!-- /.modal -->

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
							<a href="crudApartamento.jsp?id=<%=apartamento.getId() %>&acao=excluirApartamento"  class="btn btn-danger delBtn">Excluir</a>
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
				<%if (apartamentos == null)
				         out.print("disabled");
			          else if (apartamentos.size() == 0)
				               out.print("disabled");%>
				class="btn btn-secondary btn-lg">Próxima Página</button>

			</div>
	</div>
</div>
<!-- INICIO PAGINAÇÃO APARTAMENTO -->
<script>
		function proximaPagina() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			location.href = "listarApartamento.jsp?pag=" + (parseInt(paginaAtual) + 1);
		}

		function paginaAnterior() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			if (parseInt(paginaAtual) > 1)
				location.href = "listarApartamento.jsp?pag=" + (parseInt(paginaAtual) - 1);
		}
</script>
<!-- FIM PAGINAÇÃO APARTAMENTO -->
<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>