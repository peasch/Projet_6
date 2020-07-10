package com.lade.Service;

import com.lade.Entity.Topo;
import com.lade.Entity.User;

import java.util.List;

public interface TopoService {
    Topo toTopo(String description, String name, String release, User user);

    List<Topo> topos();

    Topo find(Integer id);

    List<Topo> findByUser(User user);

    Topo ajouter(String describe, String name, String release, User user);

    List<Topo> toposWithoutUsers(User user);

    List<Topo> findUnavailable(User user);

    Topo retourDispo(Topo topo);

    Topo updateTopo(Topo topo);

}
