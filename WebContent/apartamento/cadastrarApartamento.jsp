<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="../apartamento/crudApartamento.jsp" method="POST">
		<input type="hidden" name="acao" value="incluirApartamento">
		<select>
			<option>Selecione o morador</option>
		</select><br>
		
		<select>
			<option>Selecione o proprietario</option>
		</select><br>
		
		Numero apartamento:<br><input type="number" name="numero"><br>
		
		Bloco apartamento:<br><input type="text" name="bloco"><br>
		
		<input type="submit" value="Cadastrar">
	
	
	</form>

</body>
</html>