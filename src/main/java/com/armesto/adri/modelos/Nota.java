package com.armesto.adri.modelos;

import java.time.LocalDate;

/**
 * Clase padre Nota
 */

public abstract class Nota {
    private String titulo;
    private LocalDate fechaCreacion;

    protected Nota(String titulo){
        this.titulo = titulo;
        this.fechaCreacion = LocalDate.now();
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public LocalDate getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(LocalDate fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }


}
