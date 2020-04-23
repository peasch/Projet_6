package com.lade.Dao;


import com.lade.Entity.Route;

import java.util.List;

public interface RouteDao {

    void ajouter(Route route);
    List<Route> lister();
}
