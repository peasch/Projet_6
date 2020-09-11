package com.lade.Service.Impl;

import com.lade.Dao.RouteDao;
import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;
import com.lade.Service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.NoResultException;
import java.util.List;

@Service
public class RouteServiceImpl implements RouteService {
    @Autowired
    private RouteDao routeDao;

    public List<Route> routes(Sector sector) {
        return routeDao.routes(sector);
    }

    public Route find(Integer id) {
        return routeDao.find(id);
    }

    public List<Length> lengthes(Route route) {
        return routeDao.lister(route);
    }

    public Route toRoute(Sector sector) {
        Route route = new Route();
        try{
            route.setSectorRouteId(this.FindLastRouteOfSector(sector).getSectorRouteId() + 1);
        }catch (NoResultException e){
            route.setSectorRouteId(1);
        }
        route.setSector(sector);
        return route;
    }

    public Route ajouter(Sector sector) {
        return routeDao.ajouter(this.toRoute(sector));
    }

    public Route FindLastRouteOfSector(Sector sector) {
        return routeDao.findLastRouteOfSector(sector);
    }
}
