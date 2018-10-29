<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="control.ProprietarioControl"%>
<%@page import="model.ProprietarioApartamento"%>
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
	if(acao.equals("incluirProprietario")){
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		ProprietarioApartamento p = new ProprietarioApartamento();
		p.setEmail(email);
		p.setSenha(senha);
		
		ProprietarioControl pc = new ProprietarioControl();
		pc.salvarProprietario(p);
		response.sendRedirect("listarProprietario.jsp");
		
	}else if(acao.equals("editarProprietario")){
		long id = Long.parseLong(request.getParameter("id"));
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		ProprietarioApartamento p = new ProprietarioApartamento();
		p.setId(id);
		p.setEmail(email);
		p.setSenha(senha);
		
		ProprietarioControl pc = new ProprietarioControl();
		pc.alterarProprietario(p);
		response.sendRedirect("listarProprietario.jsp");
		
	}else if(acao.equals("excluirProprietario")){
		long id = Long.parseLong(request.getParameter("id"));
		ProprietarioControl pc = new ProprietarioControl();
		pc.deletar(id);
		response.sendRedirect("listarProprietario.jsp");
	}
%>
</body>
</html>