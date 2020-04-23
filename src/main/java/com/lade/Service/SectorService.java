package com.lade.Service;

import com.lade.Entity.Sector;
import com.lade.Entity.Spot;

import java.util.List;
import java.util.Scanner;

public class SectorService {

    Sector sector;
   Scanner sc;

    public Sector saisirSector(List<Spot> spots) {
        Spot spot;
        System.out.println(" nom du secteur : ? ");
        sector.setName(sc.nextLine());
        System.out.println(" description du secteur : ? ");
        sector.setDescription(sc.nextLine());
        System.out.println(" Dans quel spot se situe le secteur: ? ");
        for (int i = 0; i < spots.size(); i++) {
            spot = spots.get(i);
            System.out.println("nom du spot : " + "\t" + spot.getName() + "\t" + spot.getSpotId());
            System.out.println("-------------------------------------------------------------");
        }
        sector.setSpotId(sc.nextInt());

        return sector;
    }
}
