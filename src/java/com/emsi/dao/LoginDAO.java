/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.dao;

import com.emsi.classes.Utilisateur;
import com.emsi.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author el ouali
 */
public class LoginDAO {
    public Utilisateur authenticateUser(String username, String password) {
		Utilisateur user = getUserByUsername(username);
		if (user != null && user.getUsername().equals(username)
				&& user.getPassword().equals(password)) {
			return user;
		} else {
			return null;
		}
	}
    public Utilisateur getUserByUsername(String username) {
		Session session = HibernateUtil.OpenSession();
		Transaction tx = null;
		Utilisateur user = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			Query query = session.createQuery("from Utilisateur where username='"
					+ username + "'");
			user = (Utilisateur) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}


}
