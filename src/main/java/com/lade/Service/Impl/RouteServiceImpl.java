package com.lade.Service.Impl;

import com.lade.Dao.RouteDao;
import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;
import com.lade.Service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RouteServiceImpl implements RouteService {
    @Autowired
    private RouteDao routeDao;
    public List<Route> routes (Sector sector){
        return routeDao.routes(sector);
    }

    public Route find(Integer id){
        return routeDao.find(id);
    }
    public List<Length> lengthes(Route route) {
        return routeDao.lister(route);
    }
}
