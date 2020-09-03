package com.lade.Dao;


import com.lade.Entity.Sector;
import com.lade.Entity.Spot;

import java.util.List;

public interface SectorDao {

    Sector ajouter(Sector sector);
    List<Sector> lister(Spot spot);
    Sector find(Integer id);
}
