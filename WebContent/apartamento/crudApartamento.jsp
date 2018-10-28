<%@page import="control.ApartamentoControl"%>
<%@page import="control.MoradorControl"%>
<%@page import="model.Apartamento"%>
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
		String acao = request.getParameter("acao");
		if(acao.equals("incluirApartamento")){
			
			int num = Integer.parseInt(request.getParameter("numero"));
			String bloco = request.getParameter("bloco");
			
			Apartamento a = new Apartamento();
			a.setNumero(num);
			a.setBloco(bloco);
			
			ApartamentoControl ac = new ApartamentoControl();
			ac.salvarApartamento(a);
			
			response.sendRedirect("listarApartamento.jsp");
			
		}else if(acao.equals("editarApartamento")){
			
			long id = Long.parseLong(request.getParameter("id"));
			int num = Integer.parseInt(request.getParameter("numero"));
			String bloco = request.getParameter("bloco");
			
			Apartamento a = new Apartamento();
			a.setId(id);
			a.setNumero(num);
			a.setBloco(bloco);
			
			ApartamentoControl ac = new ApartamentoControl();
			ac.alterarApartamento(a);
			
			response.sendRedirect("listarApartamento.jsp");
		}else if(acao.equals("excluirApartamento")){
			long id = Long.parseLong(request.getParameter("id"));
			ApartamentoControl ac = new ApartamentoControl();
			ac.deletar(id);
			response.sendRedirect("listarApartamento.jsp");
		}
	%>
</body>
</html>