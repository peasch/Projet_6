package com.lade.Dao.Impl;

import com.lade.Dao.RouteDao;
import com.lade.Entity.Route;
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

    List<Route> routes;


    @Override
    public void ajouter(Route route) {

    }

    @Override
    public List<Route> lister() {
        return routes;
    }
}
