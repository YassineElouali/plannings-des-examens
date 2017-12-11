package com.emsi.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.emsi.classes.Utilisateur;
import com.emsi.util.HibernateUtil;

public class utilisateurDao implements IDao<Utilisateur> {

    Session session = null;
    Transaction tx = null;
    Utilisateur user = null;

    @Override
    public boolean create(Utilisateur o) {

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(o);
            tx.commit();
            return true;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.getStackTrace();
        } finally {
            session.close();
        }
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public boolean update(Utilisateur o) {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public boolean delete(Utilisateur o) {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public Utilisateur getById(int id) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            Query sql = session.createQuery("from Utilisateur where userid=" + id);

            user = (Utilisateur) sql.uniqueResult();
            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.getStackTrace();
        } finally {
            session.close();
        }
        // TODO Auto-generated method stub
        return user;
    }

    @Override
    public List<Utilisateur> getAll() {
        // TODO Auto-generated method stub
        return null;
    }

}
