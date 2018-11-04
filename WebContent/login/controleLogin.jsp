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
			response.sendRedirect(request.getContextPath() + "/indexMorador.jsp");
			System.out.println("Foi!!");
		}else if(usuario.getTipoUsuario().equals("porteiro")){
			response.sendRedirect(request.getContextPath() + "/indexPorteiro.jsp");
			System.out.println("Foi!!");
		}else if(usuario.getTipoUsuario().equals("proprietario")){
			response.sendRedirect(request.getContextPath() + "/indexProprietario.jsp");
			System.out.println("Foi!!");
		}else if(usuario.getTipoUsuario().equals("adm")){
			response.sendRedirect(request.getContextPath() + "/indexAdm.jsp");
			System.out.println("Foi!!");
		}
		
	}else{
		System.out.println("Não Foi Otário");
		response.sendRedirect(request.getContextPath() + "/login/login.jsp");
	}

%>