package com.armesto.adri.Gestor;

import java.util.ArrayList;
import java.util.List;

import com.armesto.adri.modelos.Nota;

/**
 * Clase que tengo para gestionar las notas
 * 
 * @param List<Nota> Una lista statica para trabajar sobre ella como si fuera una bbdd.
 */

public class GestorNotas {

    private static List<Nota> notas = new ArrayList<>();

    public static void añadirNota(Nota nota){
           notas.add(nota); 
       }

    public static void eliminarNota(Nota nota){
          
           notas.remove(nota);  
    }

    public static List<Nota> getNotas() {
        return notas;
    }

    public static void setNotas(List<Nota> notas) {
        GestorNotas.notas = notas;
    }

    /**
     * Devolvemos el objeto Nota a partir de la variable que nos pasan
     * en este caso es titulo
     */

    public static Nota getNota(String titulo){
        return notas.stream()
            .map(nota -> nota.getTitulo().equals(titulo) ? nota : null)
            .findFirst()
            .orElse(null);
    }

    

  
    }


    

