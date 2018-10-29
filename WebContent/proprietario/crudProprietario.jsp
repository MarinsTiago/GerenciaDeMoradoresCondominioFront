<%@page import="model.Proprietario"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="control.ProprietarioControl"%>

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
		
		String tipoUsuario = request.getParameter("tipoUsuario");
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		Proprietario p = new Proprietario();
		p.setTipoUsuario(tipoUsuario);
		p.setNome(nome);
		p.setCpf(cpf);
		p.setEmail(email);
		p.setTelefone(telefone);
		p.setCelular(celular);
		p.setLogin(login);
		p.setSenha(senha);
		
		ProprietarioControl pc = new ProprietarioControl();
		pc.salvarProprietario(p);
		response.sendRedirect("listarProprietario.jsp");
		
	}else if(acao.equals("editarProprietario")){
		long id = Long.parseLong(request.getParameter("id"));
		String tipoUsuario = request.getParameter("tipoUsuario");
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		Proprietario p = new Proprietario();
		p.setId(id);
		p.setTipoUsuario(tipoUsuario);
		p.setNome(nome);
		p.setCpf(cpf);
		p.setEmail(email);
		p.setTelefone(telefone);
		p.setCelular(celular);
		p.setLogin(login);
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