package com.lade.Dao.Impl;

import com.lade.Dao.RouteDao;
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
public class RouteDaoImpl implements RouteDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Route ajouter(Route route) {
        em.persist(route);
        return route;
    }

    @Override
    public List<Length> lister(Route route) {
        List<Length> lengthes = em.createQuery("SELECT l from Length l WHERE l.route like : route", Length.class).setParameter("route", route).getResultList();
        return lengthes;
    }

    @Override
    public List<Route> routes (Sector sector){
         List<Route> routes =em.createQuery("SELECT r from Route r WHERE r.sector like : sector", Route.class).setParameter("sector",sector).getResultList();
         return routes;
    }

    @Override
    public Route find(Integer id){
        return em.find(Route.class,id);
    }

    @Override
    public Route findLastRouteOfSector(Sector sector){
        return em.createQuery("SELECT r from Route r where r.sector like : sector order by id desc",Route.class).setParameter("sector",sector).setMaxResults(1).getSingleResult();
    }
}
