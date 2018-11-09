<%@page import="model.Morador"%>
<%@page import="control.PorteiroControl"%>
<%@page import="model.Usuario"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <%
	HttpSession sessao = request.getSession();
	Usuario u = (Usuario) sessao.getAttribute("usuario");
	long id = u.getId();
%>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">WebCondo</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="apartamento/listarApartamento.jsp">Apartamentos<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="morador/listarMoradores.jsp">Moradores<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="proprietario/listarProprietario.jsp">Proprietarios<span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="porteiro/editarPorteiro.jsp?id=<%=id%>">Editar Informações<span class="sr-only">(current)</span></a>
      </li>
    </ul>
     <li class="nav navbar-nav navbar-right">
		<div align="right"><a class="nav-link" href="login/deslogar.jsp"><span class="glyphicon glyphicon-log-out"><br>Logout</a></div> 
	</li>
  </div>
</nav>

<div class="container">
	<div class="col-md-6">
		<div class="input-group h2">
		<form action="crudPorteiro.jsp">
			<input type="hidden" value="buscarMorador">
		    <input name="nomeMorador" class="form-control" id="search" type="text" placeholder="Pesquisar moradores">
		       <span class="input-group-btn">
		           <button class="btn btn-info" type="submit">
		               <span class="glyphicon glyphicon-search">Buscar</span>		                  
		           </button>
		      </span>
		</form>      
		</div>		        
	</div>
	<%
	PorteiroControl pc = new PorteiroControl();
	String nomeMorador = request.getParameter("nomeMorador");
	Morador m = pc.buscarMoradorPorNome(nomeMorador);
	 %>
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
					<th>Placa do veículo</th>
				</thead>
				<tbody>
				
					<%-- <%
					if(moradores != null)
						for(Morador morador : moradores) {
					%> --%>
						<tr>
							<td>
							<% out.print(m.getNome()); %>
							</td>
							<td>
								<% out.print(m.getCpf()); %>
							</td>
							<td>
								<% out.print(m.getTelefoneResidencial()); %>
							</td>
							<td>
								<% out.print(m.getTelefoneComercial()); %>
							</td>
							<td>
								<% out.print(m.getCelular()); %>
							</td>
							<td>
								<% out.print(m.getTipoDocumento()); %>
							</td>
							<td>
								<% out.print(m.getTipoMorador()); %>
							</td>
							<td>
								<% out.print(m.getEmail()); %>
							</td>
							<td>
								<% out.print(m.getPlacaVeiculo()); %>
							</td>
							<%-- <td class="mw-200">
								<a href="editarMorador.jsp?id=<%=morador.getId() %>"class="btn btn-primary">Editar</a>
								<a href="crudMorador.jsp?id=<%=morador.getId() %>&acao=excluirMorador" onclick="return confirmacaoDelecao()" class="btn btn-danger">Excluir</a>
							</td> --%>
						</tr>
						<%-- <% } %> --%>
					</tbody>
				
				</table>
		</div>
</div>
</body>
</html>