package com.lade.Service;

import com.lade.Entity.Spot;
import com.lade.Entity.User;

import java.util.List;

public interface SpotService {
    Spot toSpot(String name, String adress, String latitude, String longitude, User user);

    Spot findLast();

    Spot find(Integer id);

    List<Spot> lister();

    Spot ajouter(String name, String adress, String latitude, String longitude, User user);

    Spot approuve(Spot spot);

    Spot downgrade(Spot spot);

    List<String> searchRegion();
    List<String> searchCountry();
}
