package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Apartamento;
import wsclient.RESTConexao;

public class ApartamentoControl {
	
	@SuppressWarnings("unchecked")
	public List<Apartamento> listar(int pagina, int limitePorPagina){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/apartamento/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("pagina", pagina);
		queryParams.put("limitePorPagina", limitePorPagina);
		RESTConexao rest = new RESTConexao();
		return (List<Apartamento>) rest.getList(url, "GET", Apartamento.class, null, queryParams);
	}
	
	public void salvarApartamento(Apartamento apartamento) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/apartamento/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, apartamento, queryParams);
	}
	public void alterarApartamento(Apartamento apartamento) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/apartamento/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, apartamento, queryParams);
	}
	public Apartamento buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/apartamento/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (Apartamento) rest.getObject(url, "GET", Apartamento.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/apartamento/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
}
