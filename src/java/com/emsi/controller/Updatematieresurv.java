/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.controller;

import com.emsi.classes.Matiere;
import com.emsi.dao.MatiereDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author el ouali
 */
@WebServlet("/Updatematieresurv")
public class Updatematieresurv extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Long id=Long.parseLong(request.getParameter("id"));
            String nomclasse = request.getParameter("nomclasse");
            String nommatiere = request.getParameter("nommatiere");
            String prof = request.getParameter("nomprof");
            String libsalle = request.getParameter("nomsalle");
            String jour = request.getParameter("jour");
            String nomsurv = request.getParameter("nomsurv");
            String semester = request.getParameter("semester");
            MatiereDao m = new MatiereDao();
            Matiere mat = new Matiere();
            mat=m.getById(id);
            mat.setJour(jour);
            mat.setNomClasse(nomclasse);
            mat.setNomMatiere(nommatiere);
            mat.setNomProfesseur(prof);
            mat.setNomSalle(libsalle);
            mat.setNomSurveillant(nomsurv);
            mat.setSemestre(semester);
            m.update(mat);
            response.sendRedirect("/Projet/listmatiere.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
