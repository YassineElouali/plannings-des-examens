/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.controller;

import com.emsi.classes.Classe;
import com.emsi.classes.Examen;
import com.emsi.classes.Matiere;
import com.emsi.dao.ClasseDao;
import com.emsi.dao.MatiereDao;
import com.emsi.dao.ExamenDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.resource.spi.AuthenticationMechanism;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author el ouali
 */
@WebServlet(name = "Addexamserv", urlPatterns = {"/Addexamserv"})
public class Addexamserv extends HttpServlet {
            private ExamenDao ed;
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
            
            int idc= Integer.parseInt(request.getParameter("classe"));
            ClasseDao cs = new ClasseDao();
            MatiereDao md=new MatiereDao();
            Classe c= cs.getById(idc);
            
            String ids=request.getParameter("semester");
            String[] dat = request.getParameterValues("jour");
            String[] mat = request.getParameterValues("matiere");
            String[] hd = request.getParameterValues("startTime");
            String[] hf = request.getParameterValues("endTime");
            StringBuffer date = new StringBuffer();
            for(String s:dat) {
      date.append(s + ", ");
      
    }   
            response.sendRedirect("/Projet/table.jsp");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
