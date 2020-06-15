package com.lade.Service;

import com.lade.Dao.SectorDao;
import com.lade.Entity.Sector;
import com.lade.Entity.Spot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Scanner;
import java.util.Set;

@Service
public class SectorService {

    @Autowired
   private SectorDao sectorDao;

    public Sector toSector(String name, String description, Spot spot){
        Sector sector = new Sector();
        sector.setName(name);
        sector.setDescription(description);
        sector.setSpot(spot);

        return sector;
    }


    public List<Sector> lister(Spot spot) {
        return sectorDao.lister(spot);
    }

    public Sector find(Integer id){
        return sectorDao.find(id);
    }

    public Sector ajouter(String name, String description, Spot spot) {
        return sectorDao.ajouter(this.toSector(name, description, spot));
    }

}
