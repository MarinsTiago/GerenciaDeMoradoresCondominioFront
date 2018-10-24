<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de morador</title>
</head>
<body>
	<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<div class="login">
			<form method="POST" action="<%=request.getContextPath() %>/crudMorador.jsp">
			  <input type="hidden" name="acao" value="incluirMorador" >
			  Nome:<br>
			  <input type="text" name="nome" class="form-control" >
			  <br>
			  CPF:<br>
			  <input type="text" name="cpf" class="form-control">
			  <br>
			  Número do Apartamento:<br>
			  <input type="number" name="numApart" class="form-control"><br>
			  
				
				<input type="submit" class="btn btn-primary" value="Salvar">
				<input type="button" onclick="history.back()" class="btn btn-default" value="Cancelar">
			
			</form> 
		</div>
	</div>
	<div class="col-md-4"></div>
</div>
</body>
</html>