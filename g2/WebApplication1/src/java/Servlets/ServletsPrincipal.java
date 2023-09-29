/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlets;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author Raul
 */
@WebServlet(name = "ServletPrincipal", urlPatterns = {"/ServletPrincipal"})
public class ServletsPrincipal {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String nombres = request.getParameter("tfNombres");
            String apellidos = request.getParameter("tfApellidos");
            String opinion = request.getParameter("rbOpinion");
            String comentarios = request.getParameter("taComentarios");
            
            out.println("<h1>Resultados de la encuesta</h1>");
            out.println("<strong>Nombres: </strong>" + nombres);
            out.println("<br><strong>Apellidos: </strong>" + apellidos);
            out.println("<br><br><strong>Opinión: </strong>" + opinion);
            out.println("<br><strong>Comentarios: </strong>" + comentarios);

                 
            out.println("</body>");
            out.println("</html>");
        }
    }
    
}
