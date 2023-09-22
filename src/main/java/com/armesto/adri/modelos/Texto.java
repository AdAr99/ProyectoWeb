package com.armesto.adri.modelos;

public class Texto extends Nota {
    private String campoTexto;

    public Texto(String titulo, String campoTexto) {
        super(titulo);
        this.campoTexto = campoTexto;
    }

     
    public String getCampoTexto() {
        return campoTexto;
    }

   

    public void setCampoTexto(String campoTexto) {
        this.campoTexto = campoTexto;
    }

    
    
}
