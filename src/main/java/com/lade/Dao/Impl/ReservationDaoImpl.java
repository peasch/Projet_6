package com.lade.Dao.Impl;

import com.lade.Dao.ReservationDao;
import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import java.util.Date;
import java.util.List;

@Transactional
@Repository
public class ReservationDaoImpl implements ReservationDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Reservation add(Reservation reservation) {
            em.persist(reservation);
        return reservation;
    }


    @Override
    public Reservation existingResa(User user, Topo topo) {
        Reservation reservation = em.createQuery("SELECT r from Reservation r where r.caller like :user AND r.topo like : topo", Reservation.class)
                .setParameter("user", user).setParameter("topo", topo).getSingleResult();
        return reservation;
    }

    @Override
    public List<Reservation> findResaByOwner(User user) {
        return em.createQuery("SELECT r FROM Reservation r LEFT JOIN  r.topo t  where t.owner like : user", Reservation.class).setParameter("user", user).getResultList();
    }

    @Override
    public List<Reservation> findResaByCaller(User user) {
        return em.createQuery("SELECT r FROM Reservation r LEFT JOIN  r.topo t  where r.caller like : user", Reservation.class).setParameter("user", user).getResultList();
    }
    @Override
    public Reservation findById(Integer id){
       return em.find(Reservation.class, id);
    }

    @Override
    public Reservation acceptResa(Reservation reservation){
        em.merge(reservation);
        return reservation;
    }

    @Override
    public void cancelResa(Reservation reservation){


        em.remove(em.merge(reservation));
    }
}
