package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Morador;
import model.Porteiro;
import wsclient.RESTConexao;

public class PorteiroControl {

	@SuppressWarnings("unchecked")
	public List<Porteiro> listar(int pagina, int limitePorPagina){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/porteiro/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("pagina", pagina);
		queryParams.put("limitePorPagina", limitePorPagina);
		RESTConexao rest = new RESTConexao();
		return (List<Porteiro>) rest.getList(url, "GET", Porteiro.class, null, queryParams);
	}
	
	public void salvarPorteiro(Porteiro porteiro) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/porteiro/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, porteiro, queryParams);
	}
	public void alterarPorteiro(Porteiro porteiro) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/porteiro/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, porteiro, queryParams);
	}
	public Porteiro buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/porteiro/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (Porteiro) rest.getObject(url, "GET", Porteiro.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/porteiro/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
	public Morador buscarMoradorPorNome(String nome) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/porteiro/filter";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("nome", nome);
		return (Morador) rest.getObject(url, "POST", Morador.class, null, queryParams);
	}
}
