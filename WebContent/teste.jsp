<%@page import="control.PorteiroControl"%>
<%@page import="model.Porteiro"%>
<%@page import="model.Morador"%>
<%@page import="java.util.List"%>
<%@page import="control.MoradorControl"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<!--Necessario para listar todos os moradores-->
<%
	PorteiroControl pc = new PorteiroControl();
	String nome = request.getParameter("nome");
	Morador m = pc.buscarMoradorPorNome(nome);
%>
<body>
<div class="container">
	<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Nome</th>
					<th>Telefone Residencial</th>		
					<th>Celular</th>
					<th>email</th>
				</thead>
				<tbody>
					<%
					if(m != null)
					%>
						<tr>
							<td>
							<% out.print(m.getNome()); %>
							</td>
							<td>
								<% out.print(m.getTelefoneResidencial()); %>
							</td>
							<td>
								<% out.print(m.getCelular()); %>
							</td>
							<td>
								<% out.print(m.getEmail()); %>
							</td>
						</tr>
					</tbody>
				
				</table>
		</div>
		<a href="indexPorteiro.jsp">Voltar</a>
</div>		
</body>
</html>