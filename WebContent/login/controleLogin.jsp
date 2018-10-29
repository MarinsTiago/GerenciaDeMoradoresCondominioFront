<%@page import="model.Proprietario"%>
<%@page import="model.Porteiro"%>
<%@page import="model.Morador"%>
<%@page import="model.Usuario"%>
<%@page import="control.LoginControl"%>
<%
	HttpSession sessao = request.getSession();
	String login = request.getParameter("login");
	String senha = request.getParameter("senha");
	
	LoginControl lc = new LoginControl();
	
	Usuario usuario = lc.validarLogin(login, senha);
	
	if(usuario != null){
		sessao.setAttribute("usuario", usuario);
		if(usuario.getTipoUsuario().equals("morador")){
			response.sendRedirect(request.getContextPath() + "/morador/listarMoradores.jsp");
			System.out.println("Foi!!");
		}else if(usuario.getTipoUsuario().equals("porteiro")){
			response.sendRedirect(request.getContextPath() + "/porteiro/listarPorteiro.jsp");
			System.out.println("Foi!!");
		}else if(usuario.getTipoUsuario().equals("proprietario")){
			response.sendRedirect(request.getContextPath() + "/proprietario/listarProprietario.jsp");
			System.out.println("Foi!!");
		}
		
	}else{
		System.out.println("N�o Foi Ot�rio");
		response.sendRedirect(request.getContextPath() + "/login/login.jsp");
	}

%>