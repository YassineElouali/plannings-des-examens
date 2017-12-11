/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emsi.dao;
import com.emsi.classes.Examen;
import java.util.List;
import com.emsi.util.HibernateUtil;
import com.emsi.dao.IDao;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ExamenDao implements IDao<Examen> {

    Transaction tx = null;
    Session session = null;
    Examen examen = null;

    @Override
    public boolean create(Examen o) {

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
    public boolean update(Examen o) {
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
    public boolean delete(Examen o) {
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

    @Override
    public Examen getById(int id) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            examen = (Examen) session.get(Examen.class, id);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {

            session.close();
        }
        return examen;
    }

    @Override
    public List<Examen> getAll() {

        List<Examen> liste = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            liste = session.createQuery("from Examen").list();
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
}