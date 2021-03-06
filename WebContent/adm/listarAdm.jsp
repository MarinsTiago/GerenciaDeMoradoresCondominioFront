<%@page import="model.Administrador"%>
<%@page import="java.util.List"%>
<%@page import="control.AdministradorControl"%>
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
	AdministradorControl ac = new AdministradorControl();
	List<Administrador> administradores = ac.listar(paginaAtual, limitePorPagina);
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
	

<!--  classe -->

<div class="container">
<div class="card6">
	<div class="row">
		<div class="col-lg-12" >
		<div class="card-header">
			<h1>Adm</h1>
		<a href="../adm/cadastroAdm.jsp" class="btn btn-info">
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a>
		</div>
		</div>
		<div class="col-lg-12">
		<div class="card-body3" align="center" >
			<table class="table" style= "color: white">
				<thead>
					<th>Nome</th>
					<th>Login</th>
					<th>Senha</th>
				</thead>
				<tbody>
					<%
					if(administradores != null)
						for(Administrador administrador : administradores) {
					%>
						<tr>
							<td>
							<% out.print(administrador.getNome()); %>
							</td>
							<td>
								<% out.print(administrador.getLogin()); %>
							</td>
							<td>
								<% out.print(administrador.getSenha()); %>
							</td>
							<td width="180">
								<a id="btns" href="editarAdm.jsp?id=<%=administrador.getId() %>"class="btn btn-primary"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
								<a id="btns" href="crudAdm.jsp?id=<%=administrador.getId() %>&acao=excluirAdm" class="btn btn-danger delBtn"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
							</td>
						</tr>
						<% } %>
					</tbody>		
				</table>
				</div>
		</div>
		<div class="col-lg-12 text-center">

			<button onclick="paginaAnterior()" type="button"
				<%if (paginaAtual == 1)
				         out.print("disabled"); %>
				class="btn btn-lg btn-primary">P�gina Anterior</button>
			<button onclick="proximaPagina()" type="button"
				<%if (administradores == null)
				         out.print("disabled");
			          else if (administradores.size() == 0)
				               out.print("disabled");%>
				class="btn btn-secondary btn-lg">Pr�xima P�gina</button>

			</div>
	</div>
</div>
</div>
<!--INCIO PAGINA��O ADMINISTRADOR  -->
<script>
		function proximaPagina() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			location.href = "listarAdm.jsp?pag=" + (parseInt(paginaAtual) + 1);
		}

		function paginaAnterior() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			if (parseInt(paginaAtual) > 1)
				location.href = "listarAdm.jsp?pag=" + (parseInt(paginaAtual) - 1);
		}
</script>
<!--FIM PAGINA��O ADMINISTRADOR  -->
<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>