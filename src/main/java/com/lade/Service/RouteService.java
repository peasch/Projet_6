package com.lade.Service;

import com.lade.Dao.RouteDao;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class RouteService {
    @Autowired
    private RouteDao routeDao;
    public List<Route> routes (Sector sector){
        return routeDao.routes(sector);
    }
}
