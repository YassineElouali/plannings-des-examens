/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.dao;
import com.emsi.classes.Professeur;
import java.util.List;
import com.emsi.util.HibernateUtil;
import com.emsi.dao.IDao;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ProfesseurDao implements IDao<Professeur> {

    Transaction tx = null;
    Session session = null;
    Professeur profeseur = null;

    @Override
    public boolean create(Professeur o) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(o);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                e.getStackTrace();
            }
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public boolean update(Professeur o) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.update(o);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public boolean delete(Professeur o) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.delete(o);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
                e.getStackTrace();
            }
        } finally {
            session.close();
        }
        return false;

    }

    
    public Professeur getById(Long id) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            profeseur = (Professeur) session.get(Professeur.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {

            session.close();
        }
        return profeseur;
    }

    @Override
    public List<Professeur> getAll() {

        List<Professeur> liste = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            liste = session.createQuery("from Professeur").list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return liste;
    }

    @Override
    public Professeur getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}