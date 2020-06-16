package com.lade.Dao;

import com.lade.Entity.Spot;
import com.lade.Entity.Topo;
import com.lade.Entity.User;

import java.util.List;

public interface TopoDao {


    List<Topo> topos();
    Topo find(Integer id);
    List<Topo> findByUser(User user);
    Topo ajouter(Topo topo);
    List<Topo> toposWithoutUsers(User user);
}
