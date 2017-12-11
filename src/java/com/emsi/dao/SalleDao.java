/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.dao;
import java.util.List;
import com.emsi.util.HibernateUtil;
import com.emsi.classes.Salle;
import com.emsi.dao.IDao;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class SalleDao implements IDao<Salle> {

    Transaction tx = null;
    Session session = null;
    Salle salle = null;

    @Override
    public boolean create(Salle o) {

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
    public boolean update(Salle o) {
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
    public boolean delete(Salle o) {
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

    public Salle getById(Long id) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            salle = (Salle) session.get(Salle.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {

            session.close();
        }
        return salle;
    }

    @Override
    public List<Salle> getAll() {

        List<Salle> liste = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            liste = session.createQuery("from Salle").list();
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
    public Salle getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}