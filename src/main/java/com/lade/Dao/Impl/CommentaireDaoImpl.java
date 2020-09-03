package com.lade.Dao.Impl;

import com.lade.Dao.CommentaireDao;
import com.lade.Dao.ReservationDao;
import com.lade.Entity.Commentaire;
import com.lade.Entity.Reservation;
import com.lade.Entity.Spot;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional
@Repository
public class CommentaireDaoImpl  implements CommentaireDao {


    @PersistenceContext
    private EntityManager em;

    @Override
    public Commentaire add(Commentaire com) {
        em.persist(com);
        return com;
    }

    @Override
    public Commentaire update(Commentaire com) {
        em.merge(com);
        return com;
    }

    @Override
    public List<Commentaire> findBySpot(Spot spot){
        return em.createQuery("SELECT c from Commentaire c WHERE c.spot like : spot order by date desc",Commentaire.class).setParameter("spot",spot).getResultList();
    }

    @Override
    public Commentaire find(Integer id){
        return em.find(Commentaire.class,id);
    }

    @Override
    public void delete(Commentaire com){
        em.remove(em.merge(com));
    }
}
