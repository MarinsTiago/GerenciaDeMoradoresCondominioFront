package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Administrador;
import model.Condominio;
import wsclient.RESTConexao;

public class CondominioControl {

	@SuppressWarnings("unchecked")
	public List<Condominio> listar(int pagina, int limitePorPagina){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/condominio/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("pagina", pagina);
		queryParams.put("limitePorPagina", limitePorPagina);
		RESTConexao rest = new RESTConexao();
		return (List<Condominio>) rest.getList(url, "GET", Condominio.class, null, queryParams);
	}	
	
	@SuppressWarnings("unchecked")
	public List<Condominio> listarSemPage(){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/condominio/listarSemPage";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		return (List<Condominio>) rest.getList(url, "GET", Condominio.class, null, queryParams);
	}	
	public void salvarCondominio(Condominio condominio) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/condominio/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, condominio, queryParams);
	}
	public void alterarCondominio(Condominio condominio) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/condominio/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, condominio, queryParams);
	}
	public Condominio buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/condominio/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (Condominio) rest.getObject(url, "GET", Condominio.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/condominio/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
}
