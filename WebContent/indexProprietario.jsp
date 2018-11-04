<%@page import="model.Usuario"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	HttpSession sessao = request.getSession();
	Usuario u = (Usuario) sessao.getAttribute("usuario");
	long id = u.getId();
	
%>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="navbar-brand" href="#">WebCondo</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="apartamento/listarApartamento.jsp">Apartamentos<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="morador/listarMoradores.jsp">Moradores<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="proprietario/editarProprietario.jsp?id=<%=id%>">Editar Informações<span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <li class="nav navbar-nav navbar-right">
		<div align="right"><a class="nav-link" href="login/deslogar.jsp"><span class="glyphicon glyphicon-log-out"><br>Logout</a></div> 
	</li>
  </div>
</nav>
</body>
</html>