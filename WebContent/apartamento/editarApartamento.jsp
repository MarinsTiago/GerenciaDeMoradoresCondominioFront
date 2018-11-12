<%@page import="model.Proprietario"%>
<%@page import="model.Morador"%>
<%@page import="java.util.List"%>
<%@page import="control.ProprietarioControl"%>
<%@page import="control.MoradorControl"%>
<%@page import="model.Apartamento"%>
<%@page import="control.ApartamentoControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//setei um valor alto pois estava limitando a 
//listagem de morador ou proprietario nos selects
	int limitePorPagina = 400000;
	int paginaAtual;
	if (request.getParameter("pag") != null)
		paginaAtual = Integer.parseInt(request.getParameter("pag"));
	else
		paginaAtual = 1;
%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	ApartamentoControl ac = new ApartamentoControl();
	Apartamento a = ac.buscarPorId(id);
	MoradorControl mc = new MoradorControl();
	ProprietarioControl pc = new ProprietarioControl();
	List<Morador> moradores = mc.listar(paginaAtual, limitePorPagina);
	List<Proprietario> proprietarios = pc.listar(paginaAtual, limitePorPagina);
%>
<form action="crudApartamento.jsp" method="POST">
		<input type="hidden" name="acao" value="editarApartamento">
		<input type="hidden" name="id" value="<%=a.getId()%>">
		<select id="morador" name="morador">
			<option value="0">Selecione o morador</option>
		<%
			for(Morador m: moradores){
				out.print("<option value='" + m.getId() + "'>"+ m.getNome() + "</option>");
			}	
		%>
		</select><br>
		
		<select id="proprietario" name="proprietario">
			<option>Selecione o proprietario</option>
			
			<%
			for(Proprietario p: proprietarios){
				out.print("<option value='" + p.getId() + "'>"+ p.getNome() + "</option>");
			}	
		%>
		</select><br>
		
		Numero apartamento:<br><input type="number" name="numero" value="<%=a.getNumero()%>"><br>
		
		Bloco apartamento:<br><input type="text" name="bloco" value="<%=a.getBloco()%>"><br>
		
		Apartamento Ocupado?<input type="checkbox" name="ocupado" <%if(a.getOcupado().equals("sim")){ %>checked="checked" <% }%>><br>
		
		<input type="submit" value="Atualizar">

	
	</form>

</body>
</html>