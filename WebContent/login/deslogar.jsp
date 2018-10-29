<% 
	HttpSession sessao = request.getSession();
	sessao.removeAttribute("usuario");
	response.sendRedirect(request.getContextPath()+"/login/login.jsp");
%>