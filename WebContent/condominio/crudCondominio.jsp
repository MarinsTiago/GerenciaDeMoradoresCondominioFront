<%@page import="control.CondominioControl"%>
<%@page import="model.Condominio"%>
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
	if(acao.equals("incluirCondominio")){
		
		String nome = request.getParameter("nome");
		Condominio c = new Condominio();
		
		c.setNome(nome);
		CondominioControl cc = new CondominioControl();
		cc.salvarCondominio(c);
		
		response.sendRedirect("listarCondominio.jsp");
	}else if(acao.equals("editarCondominio")){
		
		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		Condominio c = new Condominio();
		
		c.setId(id);
		c.setNome(nome);
		CondominioControl cc = new CondominioControl();
		cc.alterarCondominio(c);
		
		response.sendRedirect("listarCondominio.jsp");
	}else if(acao.equals("excluirCondominio")){
		long id = Long.parseLong(request.getParameter("id"));
		CondominioControl cc = new CondominioControl();
		cc.deletar(id);
		response.sendRedirect("listarCondominio.jsp");
	}

%>
</body>
</html>