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
	
	Object usuario = lc.validarLogin(login, senha);
	
	if(usuario != null){
		sessao.setAttribute("usuario", usuario);
		if(usuario instanceof Morador){
			response.sendRedirect(request.getContextPath() + "../moradore/listarMoradores.jsp");
		}else if(usuario instanceof Porteiro){
			response.sendRedirect(request.getContextPath() + "../moradore/listarPorteiro.jsp");
		}else if(usuario instanceof Proprietario){
			response.sendRedirect(request.getContextPath() + "../moradore/listarProprietario.jsp");
		}
		
	}else{
		response.sendRedirect(request.getContextPath() + "/login/login.jsp");
	}

%>