package com.lade.Dao;
import com.lade.Entity.Spot;

import java.util.List;

public interface SpotDao {

    Spot ajouter(Spot spot);
    List<Spot> lister();
    Spot find(Integer id);
    Spot findLast();
    Spot update(Spot spot);
    List<String> searchRegion();
    List<String> searchCountry();
    List<Spot> researchSpotByParameters(String countries);
}
