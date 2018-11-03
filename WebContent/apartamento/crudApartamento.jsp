<%@page import="model.Proprietario"%>
<%@page import="control.ProprietarioControl"%>
<%@page import="model.Morador"%>
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
			
			MoradorControl mc = new MoradorControl();
			ProprietarioControl pc = new ProprietarioControl();
			
			
			long morador = Long.parseLong(request.getParameter("morador"));
			long proprietario = Long.parseLong(request.getParameter("proprietario"));
			Morador m = mc.buscarPorId(morador);
			Proprietario p = pc.buscarPorId(proprietario);
			int num = Integer.parseInt(request.getParameter("numero"));
			String bloco = request.getParameter("bloco");
			String ocupado = request.getParameter("ocupado");
			
			try
			   {
			    if(ocupado.equals("null") || ocupado.equals(""))
			      ocupado="nao"; //não está marcado
			    else
			      ocupado="sim"; //marcado
			   }
			   catch(Exception x)
			  { ocupado="nao"; } 
			
			
			Apartamento a = new Apartamento();
			if(morador == 0){
				a.setMorador(null);
				a.setProprietario(p);
				a.setNumero(num);
				a.setBloco(bloco);
				a.setOcupado(ocupado);
			}else{
				a.setMorador(m);
				a.setProprietario(p);
				a.setNumero(num);
				a.setBloco(bloco);
				a.setOcupado(ocupado);
			}
			
			
			ApartamentoControl ac = new ApartamentoControl();
			ac.salvarApartamento(a);
			
			response.sendRedirect("listarApartamento.jsp");
			
		}else if(acao.equals("editarApartamento")){
			MoradorControl mc = new MoradorControl();
			ProprietarioControl pc = new ProprietarioControl();
			
			
			long morador = Long.parseLong(request.getParameter("morador"));
			long proprietario = Long.parseLong(request.getParameter("proprietario"));
			Morador m = mc.buscarPorId(morador);
			Proprietario p = pc.buscarPorId(proprietario);
			long id = Long.parseLong(request.getParameter("id"));
			int num = Integer.parseInt(request.getParameter("numero"));
			String bloco = request.getParameter("bloco");
			
			String ocupado = request.getParameter("ocupado");
			try
			   {
			    if(ocupado.equals("null") || ocupado.equals(""))
			      ocupado="nao"; //não está marcado
			    else
			      ocupado="sim"; //marcado
			   }
			   catch(Exception x)
			  { ocupado="nao"; } 
			
			
			Apartamento a = new Apartamento();
			if(morador == 0){
				a.setId(id);
				a.setMorador(null);
				a.setProprietario(p);
				a.setNumero(num);
				a.setBloco(bloco);
				a.setOcupado(ocupado);
			}else{
				a.setId(id);
				a.setMorador(m);
				a.setProprietario(p);
				a.setNumero(num);
				a.setBloco(bloco);
				a.setOcupado(ocupado);
			}
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