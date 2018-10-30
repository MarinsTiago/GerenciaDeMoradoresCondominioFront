
<%@page import="model.Morador"%>
<%@page import="control.MoradorControl"%>
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
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");	
		String tipoUsuario = request.getParameter("tipoUsuario"); 
		
		Morador m = new Morador();
		m.setNome(nome);
		m.setCpf(cpf);
		m.setEmail(email);
		m.setTelefoneResidencial(telResidencial);
		m.setTelefoneComercial(telComercial);
		m.setCelular(celular);
		m.setTipoDocumento(doc);
		m.setTipoMorador(tipoMorador);
		m.setPlacaVeiculo(veiculo);
		
		m.setTipoUsuario(tipoUsuario);
		m.setLogin(login);
		m.setSenha(senha); 
		
		MoradorControl mc = new MoradorControl();
		mc.salvarMorador(m);
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
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha"); 
		String tipoUsuario = request.getParameter("tipoUsuario");
		
		Morador m = new Morador();
		m.setId(id);
		m.setNome(nome);
		m.setCpf(cpf);
		m.setEmail(email);
		m.setTelefoneResidencial(telResidencial);
		m.setTelefoneComercial(telComercial);
		m.setCelular(celular);
		m.setTipoDocumento(doc);
		m.setTipoMorador(tipoMorador);
		m.setPlacaVeiculo(veiculo); 
		m.setLogin(login);
		m.setSenha(senha);
		m.setTipoUsuario(tipoUsuario);
		
		MoradorControl mc = new MoradorControl();
		mc.alterarMorador(m);
		response.sendRedirect("listarMoradores.jsp");
		
	}else if(acao.equals("excluirMorador")){
		long id = Long.parseLong(request.getParameter("id"));
		MoradorControl mc = new MoradorControl();
		mc.deletar(id);
		response.sendRedirect("listarMoradores.jsp");
		
	}
%>
</body>
</html>