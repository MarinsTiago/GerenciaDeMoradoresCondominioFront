package control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Administrador;
import model.ProprietarioApartamento;
import wsclient.RESTConexao;

public class ProprietarioControl {

	@SuppressWarnings("unchecked")
	public List<ProprietarioApartamento> listar(){
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/listar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		return (List<ProprietarioApartamento>) rest.getList(url, "GET", ProprietarioApartamento.class, null, queryParams);
	}
	
	public void salvarProprietario(ProprietarioApartamento proprietarioApartamento) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/inserir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "POST", null, proprietarioApartamento, queryParams);
	}
	public void alterarProprietario(ProprietarioApartamento proprietarioApartamento) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/editar";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		rest.getObject(url, "PUT", null, proprietarioApartamento, queryParams);
	}
	public ProprietarioApartamento buscarPorId(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/buscarId";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		return (ProprietarioApartamento) rest.getObject(url, "GET", ProprietarioApartamento.class, null, queryParams);
	}
	public void deletar(long id) {
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/proprietario/excluir";
		Map<String, Object> queryParams = new HashMap<String, Object>();
		RESTConexao rest = new RESTConexao();
		queryParams.put("id", id);
		rest.getObject(url, "DELETE", null, null, queryParams);
	}
}
