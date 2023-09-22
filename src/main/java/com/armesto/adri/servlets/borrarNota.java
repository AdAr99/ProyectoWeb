package com.armesto.adri.servlets;

import java.io.IOException;

import com.armesto.adri.Gestor.GestorNotas;
import com.armesto.adri.modelos.Nota;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "borrarNota", urlPatterns = {"/borrar"})
public class borrarNota extends HttpServlet {

    /**
     * Recojemos el valor titulo del html
     * Obtenemos el objeto al que pertenece a partir de la variable
     * Eliminas el objeto de la lista
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        String titulo = String.valueOf(req.getParameter("borrarNota"));

        Nota nota = GestorNotas.getNota(titulo);
        GestorNotas.eliminarNota(nota);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/lista.jsp");

        try{
            dispatcher.forward(req, resp);
        } catch (Exception e){
            e.printStackTrace();
        }  
    }

    
    
}
