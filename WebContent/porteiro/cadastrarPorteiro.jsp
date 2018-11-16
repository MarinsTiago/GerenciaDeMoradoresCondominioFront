<%@ include file="/estrutura/header.jsp"%>
<%@page import="model.Condominio"%>
<%@page import="java.util.List"%>
<%@page import="control.CondominioControl"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
//setei um valor alto pois estava limitando a 
//listagem de morador ou proprietario nos selects
	int limitePorPagina = 400000;
	int paginaAtual;
	if (request.getParameter("pag") != null)
		paginaAtual = Integer.parseInt(request.getParameter("pag"));
	else
		paginaAtual = 1;
%>
<%
	CondominioControl cc = new CondominioControl();
	List<Condominio> condominios = cc.listar(limitePorPagina, paginaAtual);

%>

<body>
	<div class="container-contact100">
	<div class="wrap-contact100">
	<form class="contact100-form validate-form" action="../porteiro/crudPorteiro.jsp" method="POST">
		<input type="hidden" name="acao" value="incluirPorteiro">
		<input type="hidden" name="tipoUsuario" value="porteiro"><!--Não alterar este campo-->
		<span class="contact100-form-title">
					Cadastro Porteiro
				</span>
		<div class="wrap-input100 rs1 validate-input">
			<input id="first-name" class="input100" type="text" name="nome" placeholder="Nome">
			<span class="focus-input100"></span>
		</div>
		
		<div class="wrap-input100 rs1 validate-input">
			<input id="first-name" class="input100" type="text" name="cpf" placeholder="CPF">
			<span class="focus-input100"></span>
		</div>
		
		<div class="wrap-input100 rs1">
			<input id="first-name" class="input100" type="text" name="telefone" placeholder="Telefone">
			<span class="focus-input100"></span>
		</div>
		
		<div class="wrap-input100 rs1">
			<input id="first-name" class="input100" type="text" name="celular" placeholder="Celular">
			<span class="focus-input100"></span>
		</div>
		
		<div class="wrap-input100 validate-input">
			<input id="first-name" class="input100" type="email" name="email" placeholder="E-mail">
			<span class="focus-input100"></span>
		</div>
		
		<div class="wrap-input100 rs1 validate-input">
			<input id="first-name" class="input100" type="text" name="login" placeholder="Login">
			<span class="focus-input100"></span>
		</div>
		
		<div class="wrap-input100 rs1 validate-input">
			<input id="first-name" class="input100" type="password" name="senha" placeholder="Senha">
			<span class="focus-input100"></span>
		</div>
		
		<select class="form-control" id="condominio" name="condominio">
			 <option>Selecione o Condominio</option>
			<%
				for(Condominio c: condominios){
					out.print("<option value='" + c.getId() + "'>"+ c.getNome() + "</option>");
				}	
			%>
		</select>
	<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							<i class="zmdi zmdi-arrow-right m-l-8"></i>
						</span>
					</button>
				</div>	
	</form>
	</div>
</div>
	<div id="dropDownSelect1"></div>

	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>