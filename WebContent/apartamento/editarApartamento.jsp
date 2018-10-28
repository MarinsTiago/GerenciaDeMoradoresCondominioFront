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
	long id = Long.parseLong(request.getParameter("id"));
	ApartamentoControl ac = new ApartamentoControl();
	Apartamento a = ac.buscarPorId(id);
%>
<form action="../apartamento/crudApartamento.jsp" method="POST">
		<input type="hidden" name="acao" value="editarApartamento">
		<input type="hidden" name="id" value="<%=a.getId()%>">
		<select>
			<option>Selecione o morador</option>
		</select><br>
		
		<select>
			<option>Selecione o proprietario</option>
		</select><br>
		
		Numero apartamento:<br><input type="number" name="numero" value="<%=a.getNumero()%>"><br>
		
		Bloco apartamento:<br><input type="text" name="bloco" value="<%=a.getBloco()%>"><br>
		
		<input type="submit" value="Atualizar">
	
	
	</form>

</body>
</html>