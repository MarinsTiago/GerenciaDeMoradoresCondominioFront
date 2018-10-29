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
	ProprietarioControl pc = new ProprietarioControl();
	List<Proprietario> proprietarios = pc.listar();
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
							<% out.print(proprietario.getEmail()); %>
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
	</div>
</div>
</body>
</html>