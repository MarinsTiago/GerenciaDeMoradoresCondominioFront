package model;

public class Condominio {

	private long id;
	
	//private Apartamento apartamento;
	
	//private Porteiro porteiro;
	
	private String nome;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	/*public Apartamento getApartamento() {
		return apartamento;
	}

	public void setApartamento(Apartamento apartamento) {
		this.apartamento = apartamento;
	}

	public Porteiro getPorteiro() {
		return porteiro;
	}

	public void setPorteiro(Porteiro porteiro) {
		this.porteiro = porteiro;
	}
*/
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
