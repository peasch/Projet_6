package com.lade.Dao;


import com.lade.Entity.Sector;

import java.util.List;

public interface SectorDao {

    void ajouter(Sector sector);
    List<Sector> lister(Integer spotId);
}
