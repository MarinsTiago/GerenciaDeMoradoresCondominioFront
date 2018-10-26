<%@page import="control.MoradorControl"%>
<%@page import="model.Morador"%>
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
	if(acao.equals("incluirMorador")){
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telResidencial = request.getParameter("telResidencial");
		String telComercial = request.getParameter("telComercial");
		String celular = request.getParameter("celular");
		String doc = request.getParameter("doc");
		String tipoMorador = request.getParameter("morador");
		String veiculo = request.getParameter("veiculo");
		String senha = request.getParameter("senha");
		
		Morador morador = new Morador();
		morador.setNome(nome);
		morador.setCpf(cpf);
		
		
		MoradorControl mc = new MoradorControl();
		mc.salvarMorador(morador);
		response.sendRedirect("listarMoradores.jsp");
	}else if(acao.equals("editarMorador")){
		
		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String telResidencial = request.getParameter("telResidencial");
		String telComercial = request.getParameter("telComercial");
		String celular = request.getParameter("celular");
		String doc = request.getParameter("doc");
		String tipoMorador = request.getParameter("morador");
		String veiculo = request.getParameter("veiculo");
		String senha = request.getParameter("senha");
		
		Morador morador = new Morador();
		morador.setId(id);
		morador.setNome(nome);
		morador.setCpf(cpf);
		
		
		
		MoradorControl mc = new MoradorControl();
		mc.alterarMorador(morador);
		response.sendRedirect("listarMoradores.jsp");
	}else if(acao.equals("excluirMorador")){
		String id = request.getParameter("id");
		MoradorControl mc = new MoradorControl();
		mc.deletar(Long.parseLong(id));
		response.sendRedirect("listarMoradores.jsp");
		
	}
%>
</body>
</html>