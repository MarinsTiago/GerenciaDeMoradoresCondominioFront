<%@page import="control.AdministradorControl"%>
<%@page import="model.Administrador"%>
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
	if(acao.equals("incluirAdm")){
		
		String nome = request.getParameter("nome");
		String tipoUsuario = request.getParameter("tipoUsuario");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		Administrador adm = new Administrador();
		adm.setNome(nome);
		adm.setLogin(login);
		adm.setSenha(senha);
		adm.setTipoUsuario(tipoUsuario);
		
		AdministradorControl ac = new AdministradorControl();
		ac.salvarAdministrador(adm);
		response.sendRedirect("indexAdm.jsp");
		
	}else if(acao.equals("editarAdm")){
		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String tipoUsuario = request.getParameter("tipoUsuario");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		Administrador adm = new Administrador();
		adm.setId(id);
		adm.setNome(nome);
		adm.setLogin(login);
		adm.setSenha(senha);
		adm.setTipoUsuario(tipoUsuario);
		
		AdministradorControl ac = new AdministradorControl();
		ac.alterarAdministrador(adm);
		response.sendRedirect("listarAdm.jsp");
		
	}else if(acao.equals("excluirAdm")){
		long id = Long.parseLong(request.getParameter("id"));
		AdministradorControl ac = new AdministradorControl();
		ac.deletar(id);
		response.sendRedirect("listarAdm.jsp");
	}

%>
</body>
</html>