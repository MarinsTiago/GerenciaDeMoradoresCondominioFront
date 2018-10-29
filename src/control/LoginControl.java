package control;

import java.util.HashMap;
import java.util.Map;

import model.Usuario;
import wsclient.RESTConexao;

public class LoginControl {

	public Usuario validarLogin(String login, String senha) {
		RESTConexao rest = new RESTConexao();
		Map<String,Object> queryParams = new HashMap<String,Object>();
		queryParams.put("login", login);
		queryParams.put("senha", senha);
		String url = "http://localhost:8080/GerenciaDeMoradoresCondominioBack/api/login/validar";
		Usuario lista = (Usuario) rest.getObject(url, "GET", Usuario.class, null, queryParams);
		return lista;
	}
}
