<%@page import="control.PorteiroControl"%>
<%@page import="model.Porteiro"%>
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
	if(acao.equals("incluirPorteiro")){
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		Porteiro p = new Porteiro();
		p.setNome(nome);
		p.setCpf(cpf);
		p.setTelefone(telefone);
		p.setCelular(celular);
		p.setEmail(email);
		p.setSenha(senha);
		
		PorteiroControl pc = new PorteiroControl();
		pc.salvarPorteiro(p);
		response.sendRedirect("listarPorteiro.jsp");
		
	}else if(acao.equals("editarPorteiro")){
		
		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		Porteiro p = new Porteiro();
		p.setId(id);
		p.setNome(nome);
		p.setCpf(cpf);
		p.setTelefone(telefone);
		p.setCelular(celular);
		p.setEmail(email);
		p.setSenha(senha);
		
		PorteiroControl pc = new PorteiroControl();
		pc.alterarPorteiro(p);
		response.sendRedirect("listarPorteiro.jsp");
	}else if(acao.equals("excluirPorteiro")){
		long id = Long.parseLong(request.getParameter("id"));
		PorteiroControl pc = new PorteiroControl();
		pc.deletar(id);
		response.sendRedirect("listarPorteiro.jsp");
	}

%>
</body>
</html>