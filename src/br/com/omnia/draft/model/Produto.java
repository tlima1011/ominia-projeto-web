package br.com.omnia.draft.model;

public class Produto {

    private Integer codigo;
    private String nome;
    private int unidade;
    private Double valor;

    public Produto(){

    }
    
    public Produto(String nome, int unidade, Double valor) {
		this.codigo = codigo; 
    	this.nome = nome;
		this.unidade = unidade;
		this.valor = valor;
	}
    
    public Produto(Integer codigo, String nome, int unidade, Double valor) {
		this.codigo = codigo;
		this.nome = nome;
		this.unidade = unidade;
		this.valor = valor;
	}

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getUnidade() {
        return unidade;
    }

    public void setUnidade(int unidade) {
        this.unidade = unidade;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }


}
