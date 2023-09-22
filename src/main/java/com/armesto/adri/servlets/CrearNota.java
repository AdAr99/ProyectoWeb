package com.armesto.adri.servlets;

import java.io.IOException;

import com.armesto.adri.Gestor.GestorNotas;
import com.armesto.adri.modelos.Nota;
import com.armesto.adri.modelos.Texto;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "CrearNota", urlPatterns={"/crearNota"})
public class CrearNota extends HttpServlet {

    /**
     * @author Adrian Armesto
     * 
     * Recoge los parametros titulo y campo de texto del htmml
     * Creamos el objeto Texto y lo insertamos an la lista
     * Volvemos a la pagina de crear notas
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      

        String titulo = req.getParameter("titulo");
        String campoTexto = req.getParameter("campoTexto");

        Texto notanUeva = new Texto(titulo, campoTexto);
        System.out.println(titulo);

        GestorNotas.añadirNota(notanUeva);

        
     
         RequestDispatcher dispatcher = req.getRequestDispatcher(
                "crearNota.jsp"); 
        try{
            dispatcher.forward(req, resp);
        } catch (Exception e){
            e.printStackTrace();
        }  

       
    }
    
    
}
