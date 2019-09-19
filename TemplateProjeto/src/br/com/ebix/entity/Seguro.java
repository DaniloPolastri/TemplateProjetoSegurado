package br.com.ebix.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Seguro implements EntidadeBase {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer identificacao;
	private String[] seguro;
	private Double valor;

	public String[] getSeguro() {
		return seguro;
	}

	public void setSeguro(String[] seguro) {
		this.seguro = seguro;
	}

	public Integer getIdentificacao() {
		return identificacao;
	}

	public void setIdentificacao(Integer identificacao) {
		this.identificacao = identificacao;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	@Override
	public Integer getId() {
		return null;
	}

}
