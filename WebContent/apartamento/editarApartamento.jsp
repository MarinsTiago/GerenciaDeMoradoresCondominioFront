<%@include file="/estrutura/header.jsp"%>
<%@page import="model.Proprietario"%>
<%@page import="model.Morador"%>
<%@page import="java.util.List"%>
<%@page import="control.ProprietarioControl"%>
<%@page import="control.MoradorControl"%>
<%@page import="model.Apartamento"%>
<%@page import="control.ApartamentoControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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


<div class="container">
	<div class="d-flex justify-content-center h-100">
<form action="crudApartamento.jsp" method="POST">
<div class="card7">
<div class="col-lg-12">


		<input type="hidden" name="acao" value="editarApartamento">
		<input type="hidden" name="id" value="<%=a.getId()%>">
			<div class="card-body4" align="center">
		<select class="form-control" id="morador" name="morador">
		
	
			<option value="0">Selecione o morador</option>
		<%
			for(Morador m: moradores){
				out.print("<option value='" + m.getId() + "'>"+ m.getNome() + "</option>");
			}	
		%>
		</select><br>
		
		<select class="form-control" id="proprietario" name="proprietario">
			<option>Selecione o proprietario</option>
			
			<%
			for(Proprietario p: proprietarios){
				out.print("<option value='" + p.getId() + "'>"+ p.getNome() + "</option>");
			}	
		%>
		</select><br>
		
		<br><span class="input-label">Numero Ap:</span><input type="number" style="color:blue;" name="numero"><br>
		
		<br><span class="input-label">Bloco Ap:</span><input type="text" style="color:blue;" name="bloco"><br>
		
		<span class="input-label">Apartamento Ocupado?</span><input type="checkbox" style="color:blue;" name="ocupado"> <br>
		
		<div align="center" class="container-contact100-form-btn">
						<input type="submit" class="btn btn-primary" value="Atualizar">
				<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">		
</div>
</div>
</div>
</div>

	
	</form>
</div>
</div>
</body>
</html>