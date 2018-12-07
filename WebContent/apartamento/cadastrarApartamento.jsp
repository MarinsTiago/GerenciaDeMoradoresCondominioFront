<%@ include file="/estrutura/header.jsp"%>
<%@page import="model.Proprietario"%>
<%@page import="model.Morador"%>
<%@page import="java.util.List"%>
<%@page import="control.ProprietarioControl"%>
<%@page import="control.MoradorControl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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
	MoradorControl mc = new MoradorControl();
	ProprietarioControl pc = new ProprietarioControl();
	List<Morador> moradores = mc.listar(paginaAtual, limitePorPagina);
	List<Proprietario> proprietarios = pc.listar(paginaAtual, limitePorPagina);
%>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
	<form action="../apartamento/crudApartamento.jsp" method="POST">
	<div class="card4">
			<div align="center" class="card-header">
			
				<span class="contact100-form-title"><h3>Cadastro de Apartamento</h3></span>
			</div>
			<div class="card-body2" align="center">
	
	
		<input type="hidden" name="acao" value="incluirApartamento">
		
	
				<div class="wrap-input100 rs1 validate-input">				
				<div class="form-container">
		
		  <div class="row">
  		
  		<div class="col col-md-6">
		<select class="form-control" id="morador" name="morador" style="height:2.5em;">
		
			 <option value="0">Selecione o morador</option>
		<%
			for(Morador m: moradores){
				out.print("<option value='" + m.getId() + "'>"+ m.getNome() + "</option>");
			}	
		%>
		
		</select>
		</div>
		</div>
		<br>
		  <div class="row">
  		
  		<div class="col col-md-6">
		<select class="form-control" id="proprietario" name="proprietario" style="height:2.5em;">
			<option>Selecione o proprietario</option>
			<%
			for(Proprietario p: proprietarios){
				out.print("<option value='" + p.getId() + "'>"+ p.getNome() + "</option>");
			}	
		%>
		</select>
		</div>
		</div>
		<br><span class="input-label">Numero Ap:</span><input type="number" style="color:blue;" name="numero"><br>
		
		<br><span class="input-label">Bloco Ap:</span><input type="text" style="color:blue;" name="bloco"><br>
		
		<span class="input-label">Apartamento Ocupado?</span><input type="checkbox" style="color:blue;" name="ocupado"> <br>
		
		<div align="center" class="container-contact100-form-btn">
						<button style="background-color: #00BFFF"  class="contact100-form-btn">
							Submit
						</button>
						
		<div align="center" style="margin-top: 200px">
			<a class="btn btn-primary" type="button" href="javascript:history.back()">Voltar a página anterior</a>
		</div>				
	</div>
		</div>
		</div>
	</div>
	
	</div>
	</form>
	</div>
	</div>
	
	

</body>
</html>