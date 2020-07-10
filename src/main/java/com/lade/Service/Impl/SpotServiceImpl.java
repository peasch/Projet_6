package com.lade.Service.Impl;

import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.Service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SpotServiceImpl implements SpotService {

    @Autowired
    private SpotDao spotDao;


    public Spot toSpot( String name, String adress, String latitude, String longitude, User user) {
        Spot spot = new Spot();
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

    public Spot approuve(Spot spot){
        spot.setOfficialLade(true);
        return spotDao.update(spot);
    }
    public Spot downgrade(Spot spot){
        spot.setOfficialLade(false);
        return spotDao.update(spot);
    }

    public List<String> searchRegion(){
        return spotDao.searchRegion();
    }
    public List<String> searchCountry(){
        return spotDao.searchCountry();
    }
}

