package com.lade.Service;

import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpotService {

    @Autowired
    private SpotDao spotDao;


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


    public Spot findLast() {
    return spotDao.findLast();
    }

    public Spot find(Integer id){
        return spotDao.find(id);
    }

    public List<Spot> lister() {
        return spotDao.lister();
    }

    public Spot ajouter( String name, String adress, String latitude, String longitude, User user) {
        return spotDao.ajouter(this.toSpot(name, adress, latitude, longitude, user));
    }


}

