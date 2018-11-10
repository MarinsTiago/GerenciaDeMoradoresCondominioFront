package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Morador;
import wsclient.RESTConexao;

public class MoradorControl {

	@SuppressWarnings("unchecked")
	public List<Morador> listar(int pagina, int limitePorPagina){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/morador/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("pagina", pagina);
		queryParams.put("limitePorPagina", limitePorPagina);
		RESTConexao rest = new RESTConexao();
		return (List<Morador>) rest.getList(url, "GET", Morador.class, null, queryParams);
	}
	
	public void salvarMorador(Morador morador) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/morador/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, morador, queryParams);
	}
	public void alterarMorador(Morador morador) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/morador/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, morador, queryParams);
	}
	public Morador buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/morador/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (Morador) rest.getObject(url, "GET", Morador.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/morador/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
}
