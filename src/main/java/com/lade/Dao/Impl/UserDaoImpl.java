package com.lade.Dao.Impl;

import com.lade.Dao.UserDao;
import com.lade.Entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;


@Transactional
@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager em;


    @Override
    public User ajouter(User user) {
        try {
           User userExist =existingUser(user.getUserName());
            System.out.println("ce nom d'utilisateur est indisponible");
        }catch (NoResultException nre){
            em.persist(user);
        }
        return user;
    }

    @Override
    public User existingUser(String userName) {
        User user = em.createQuery("SELECT u from User u where u.userName like :userName", User.class).setParameter("userName", userName).getSingleResult();
        return user;
    }

    @Override
    public User findById(Integer id){
        return em.find(User.class,id);
    }
}
