package dominio;

public class Sessao {
	private String titulo, data, inicio, termino;
	private int sala;
	
	public Sessao() {
		
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getInicio() {
		return inicio;
	}

	public void setInicio(String inicio) {
		this.inicio = inicio;
	}

	public String getTermino() {
		return termino;
	}

	public void setTermino(String termino) {
		this.termino = termino;
	}

	public int getSala() {
		return sala;
	}

	public void setSala(int sala) {
		this.sala = sala;
	}
}