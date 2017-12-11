/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.dao;
import com.emsi.classes.Matiere;
import java.util.List;
import com.emsi.util.HibernateUtil;
import com.emsi.dao.IDao;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class MatiereDao implements IDao<Matiere> {

    Transaction tx = null;
    Session session = null;
    Matiere matiere = null;

    @Override
    public boolean create(Matiere o) {

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
    public boolean update(Matiere o) {
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
    public boolean delete(Matiere o) {
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

    
    public Matiere getById(Long id) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            matiere = (Matiere) session.get(Matiere.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {

            session.close();
        }
        return matiere;
    }

    @Override
    public List<Matiere> getAll() {

        List<Matiere> liste = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            liste = session.createQuery("from Matiere").list();
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
    public Matiere getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}