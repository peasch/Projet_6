package com.lade.Dao.Impl;

import com.lade.Dao.LengthDao;
import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;
import com.lade.Entity.Spot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional
@Repository
public class LengthDaoImpl implements LengthDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<String> searchRatings(){
        return em.createQuery("SELECT DISTINCT rating from Length l order by rating",String.class).getResultList();
    }

    @Override
    public List<Length> searchRatingCheckbox(String query){
        return em.createQuery("SELECT l from Length l join Length.route join Route.sector join Sector.spot where"+query, Length.class).getResultList();

    }

    @Override
    public  Length ajouter(Length length){
        em.persist(length);
        return length;
    }

    @Override
    public Length findLastRouteOfSector(Route route){
        return em.createQuery("SELECT l from Length l where l.route like : route order by id desc",Length.class).setParameter("route",route).setMaxResults(1).getSingleResult();
    }
}
