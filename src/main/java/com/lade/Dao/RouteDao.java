package com.lade.Dao;


import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;

import java.util.List;

public interface RouteDao {

    Route ajouter(Route route);
    List<Length> lister(Route route);
    Route find(Integer id);
    List<Route> routes(Sector sector);
    Route findLastRouteOfSector(Sector sector);
}
