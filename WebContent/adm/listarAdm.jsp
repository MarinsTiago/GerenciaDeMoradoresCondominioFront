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
	AdministradorControl ac = new AdministradorControl();
	List<Administrador> administradores = ac.listar();
%>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Adm</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="../adm/cadastroAdm.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
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
							<td class="mw-200">
								<a href="editarAdm.jsp?id=<%=administrador.getId() %>"class="btn btn-primary">Editar</a>
								<a href="crudAdmin.jsp?id=<%=administrador.getId() %>&acao=excluirMorador" onclick="return confirmacaoDelecao()" class="btn btn-danger">Excluir</a>
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