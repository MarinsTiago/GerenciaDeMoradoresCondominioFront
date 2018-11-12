package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Administrador;
import model.Proprietario;
import wsclient.RESTConexao;

public class ProprietarioControl {

	@SuppressWarnings("unchecked")
	public List<Proprietario> listar(int pagina, int limitePorPagina){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("pagina", pagina);
		queryParams.put("limitePorPagina", limitePorPagina);
		RESTConexao rest = new RESTConexao();
		return (List<Proprietario>) rest.getList(url, "GET", Proprietario.class, null, queryParams);
	}
	
	public void salvarProprietario(Proprietario proprietarioApartamento) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, proprietarioApartamento, queryParams);
	}
	public void alterarProprietario(Proprietario proprietarioApartamento) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, proprietarioApartamento, queryParams);
	}
	public Proprietario buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (Proprietario) rest.getObject(url, "GET", Proprietario.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
}
