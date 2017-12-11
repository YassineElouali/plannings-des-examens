/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.dao;
import com.emsi.classes.Surveillant;
import java.util.List;
import com.emsi.util.HibernateUtil;
import com.emsi.dao.IDao;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class SurveillantDao implements IDao<Surveillant> {

    Transaction tx = null;
    Session session = null;
    Surveillant surveillant = null;

    @Override
    public boolean create(Surveillant o) {

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
    public boolean update(Surveillant o) {
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
    public boolean delete(Surveillant o) {
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

    
    public Surveillant getById(Long id) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            surveillant = (Surveillant) session.get(Surveillant.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {

            session.close();
        }
        return surveillant;
    }

    @Override
    public List<Surveillant> getAll() {

        List<Surveillant> liste = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            liste = session.createQuery("from Surveillant").list();
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
    public Surveillant getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}