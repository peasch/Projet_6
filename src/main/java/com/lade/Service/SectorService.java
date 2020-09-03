package com.lade.Service;

import com.lade.Entity.Sector;
import com.lade.Entity.Spot;

import java.util.List;

public interface SectorService {
    Sector toSector(String name, String description, Spot spot);

    List<Sector> lister(Spot spot);

    Sector find(Integer id);

    Sector ajouter(String name, String description, Spot spot);
}
