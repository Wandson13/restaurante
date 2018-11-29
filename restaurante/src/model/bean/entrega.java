/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Pichau
 */
public class entrega {
    private int id, nentrega;
    private String produto;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNentrega() {
        return nentrega;
    }

    public void setNentrega(int nentrega) {
        this.nentrega = nentrega;
    }

    public String getProduto() {
        return produto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }
    
}
