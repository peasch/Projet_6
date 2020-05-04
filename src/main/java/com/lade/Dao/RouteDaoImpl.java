package com.lade.Dao;

import com.lade.Entity.Route;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class RouteDaoImpl implements RouteDao {
   @Autowired
    private EntityManager em;

    List<Route> routes;
    public RouteDaoImpl(DaoFactory daoFactory) {

    }

    @Override
    public void ajouter(Route route) {

    }

    @Override
    public List<Route> lister() {
        return routes;
    }
}
