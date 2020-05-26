package com.lade.Service;

import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpotService {

    @Autowired
    SpotDao spotDao;


    public Spot toSpot( String name, String adress, String latitude, String longitude, User user) {
        Spot spot = new Spot();
        spot.setOfficialLade(false);
        spot.setName(name);
        spot.setAdress(adress);
        spot.setLatitude(latitude);
        spot.setLongitude(longitude);
        spot.setUser(user);
        return spot;
    }


}

