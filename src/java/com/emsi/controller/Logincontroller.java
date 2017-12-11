package com.emsi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emsi.classes.Utilisateur;
import com.emsi.dao.LoginDAO;
import com.emsi.dao.utilisateurDao;

@WebServlet("/logincontroller")
public class Logincontroller extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String n = request.getParameter("username");
        String p = request.getParameter("password");

        utilisateurDao ud = new utilisateurDao();
        LoginDAO logindao = new LoginDAO();
        Utilisateur u = logindao.authenticateUser(n, p);

        

        if (u != null) {
            request.setAttribute("Utilisateur", u);
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("Loginerreur.jsp");
        }

    }

}
