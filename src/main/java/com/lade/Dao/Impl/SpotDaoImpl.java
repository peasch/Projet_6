package com.lade.Dao.Impl;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional
@Repository
public class SpotDaoImpl implements SpotDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Spot ajouter(Spot spot) {
    em.persist(spot);
    return spot;
    }

    @Override
    public List<Spot> lister() {
        List<Spot> spots=em.createQuery("SELECT s FROM Spot s ",Spot.class).getResultList();
        return spots;
    }

    @Override
    public Spot find(Integer id){
        return em.find(Spot.class,id);
    }

   @Override
    public Spot findLast(){
        return em.createQuery("SELECT s from Spot s order by id desc",Spot.class).setMaxResults(1).getSingleResult();
    }
    @Override
    public Spot update(Spot spot){
        return em.merge(spot);
    }

    @Override
    public List<String> searchRegion(){
        return em.createQuery("SELECT DISTINCT region from Spot s ",String.class).getResultList();
    }

    @Override
    public List<String> searchCountry(){
        return em.createQuery("SELECT DISTINCT country from Spot s ",String.class).getResultList();
    }

}
