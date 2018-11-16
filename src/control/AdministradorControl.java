package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Administrador;
import wsclient.RESTConexao;

public class AdministradorControl {

	@SuppressWarnings("unchecked")
	public List<Administrador> listar(int pagina, int limitePorPagina){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/administrador/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("pagina", pagina);
		queryParams.put("limitePorPagina", limitePorPagina);
		RESTConexao rest = new RESTConexao();
		return (List<Administrador>) rest.getList(url, "GET", Administrador.class, null, queryParams);
	}
	
	public void salvarAdministrador(Administrador administrador) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/administrador/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, administrador, queryParams);
	}
	public void alterarAdministrador(Administrador administrador) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/administrador/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, administrador, queryParams);
	}
	public Administrador buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/administrador/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (Administrador) rest.getObject(url, "GET", Administrador.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/administrador/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
}
