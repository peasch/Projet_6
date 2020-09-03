package com.lade.Dao.Impl;

import com.lade.Dao.UserDao;
import com.lade.Entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import java.util.List;


@Transactional
@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager em;


    @Override
    public User ajouter(User user) {
        try {
            this.findUserByUserName(user.getUserName());
        }catch (NoResultException nre){
            em.persist(user);
        }
        return user;
    }

    @Override
    public User findUserByUserName(String userName) {
        User user = em.createQuery("SELECT u from User u where u.userName like :userName", User.class).setParameter("userName", userName).getSingleResult();
        return user;
    }

    @Override
    public User findById(Integer id){
        return em.find(User.class,id);
    }

    @Override
    public Boolean existingUser(String userName){
        try{
            User user = this.findUserByUserName(userName);
            return true;
        }catch (NoResultException nre){
            return false;
        }
    }

    @Override
    public List<User> userList(){
        return em.createQuery("SELECT u from User u order by userName",User.class).getResultList();
    }

    @Override
    public User update(User user){
        return em.merge(user);
    }

}
