package com.lade.Service;

import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;

import java.util.List;

public interface RouteService {


    List<Route> routes(Sector sector);

    Route find(Integer id);

    List<Length> lengthes(Route route);

    Route toRoute (Sector sector);

    Route ajouter(Sector sector);

    Route FindLastRouteOfSector(Sector sector);

}
