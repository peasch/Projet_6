package com.lade.Dao;

import com.lade.Entity.Route;

import java.util.List;

public class RouteDaoImpl implements RouteDao {
    private DaoFactory daoFactory;

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
