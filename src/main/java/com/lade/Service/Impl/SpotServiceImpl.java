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

    @Override
    public Spot toSpot(String name, String adress, String latitude, String longitude, User user) {
        Spot spot = new Spot();
        spot.setName(name.trim());
        spot.setAdress(adress.trim());
        spot.setLatitude(latitude.trim());
        spot.setLongitude(longitude.trim());
        spot.setUser(user);
        return spot;
    }

    @Override
    public Spot findLast() {
        return spotDao.findLast();
    }

    @Override
    public Spot find(Integer id) {
        return spotDao.find(id);
    }

    @Override
    public List<Spot> lister() {
        return spotDao.lister();
    }

    @Override
    public Spot ajouter(String name, String adress, String latitude, String longitude, User user) {
        return spotDao.ajouter(this.toSpot(name, adress, latitude, longitude, user));
    }

    @Override
    public Spot approuve(Spot spot) {
        spot.setOfficialLade(true);
        return spotDao.update(spot);
    }

    @Override
    public Spot downgrade(Spot spot) {
        spot.setOfficialLade(false);
        return spotDao.update(spot);
    }

    @Override
    public List<String> searchRegion() {
        return spotDao.searchRegion();
    }

    @Override
    public List<String> searchCountry() {
        return spotDao.searchCountry();
    }

    @Override
    public List<String> stringToList(String string) {
        List<String> stringList = new ArrayList<>();
        String[] stringTable = string.split(",");
        for (int i = 0; i < stringTable.length; i++) {
            if (stringTable[i].equals("no")) {
            } else {
                stringList.add(stringTable[i]);
            }
        }
        return stringList;
    }

    @Override
    public List<String> tabletoList(String[] string) {
        List<String> stringList = new ArrayList<>();

        for (int i = 0; i < string.length; i++) {
            if (string[i].equals("no")) {

            } else {
                stringList.add(string[i]);
            }
        }
        return stringList;
    }

    @Override
    public String convertCountryToQuery(List<String> strings) {
        String query = "";
        if (strings.size() > 0) {
            for (int i = 0; i < strings.size(); i++) {
                if (i == strings.size() - 1) {
                    query = query + " country like " + "\'%" + strings.get(i) + "%\'";
                } else {
                    query = " country like " + "\'%" + strings.get(i) + "%\'" + " OR " + query;
                }
            }

        }
        return query;
    }

    @Override
    public String convertRegionToQuery(List<String> regions) {
        String query = "";
        if (regions.size() > 0) {
            for (int i = 0; i < regions.size(); i++) {
                if (i == regions.size() - 1) {
                    query = query + " region like " + "\'%" + regions.get(i) + "%\'";
                } else {
                    query = " region like " + "\'%" + regions.get(i) + "%\'" + " OR " + query;
                }
            }

        }
        return query;
    }

    @Override
    public String convertRatingToQuery(List<String> ratings) {
        String query = "";
        if (ratings.size() > 0) {
            for (int i = 0; i < ratings.size(); i++) {
                if (i == ratings.size() - 1) {
                    query = query + " rating like " + "\'%" + ratings.get(i) + "%\'";
                } else {
                    query = " rating like " + "\'%" + ratings.get(i) + "%\'" + " OR " + query;
                }
            }

        }
        return query;
    }


    @Override
    public List<String> countryUnchecked(List<String> countriesChecked) {
        List<String> uncheckedCountries = this.searchCountry();
        for (int i = 0; i < countriesChecked.size(); i++) {
            for (int j = 0; j < uncheckedCountries.size(); j++) {
                if (countriesChecked.get(i).equals(uncheckedCountries.get(j))) {
                    uncheckedCountries.remove(j);
                }

            }
        }
        return uncheckedCountries;
    }

    @Override
    public List<Spot> researchSpotWithParameters(String[] countries, String regions, String ratings, String nameSpot, String nameSector) {
        String countriesQuery = this.convertCountryToQuery(this.tabletoList(countries));
        String regionsQuery = this.convertRegionToQuery(this.stringToList(regions));
        String ratingsQuery = this.convertRatingToQuery(this.stringToList(ratings));
        String queryBase = "SELECT s from Spot s ";
        String queryRequest = "";
        if (!countriesQuery.isEmpty()) {
            queryRequest = queryRequest + countriesQuery;
        }
        if (regionsQuery.isEmpty()) {
        } else if(queryRequest.isEmpty()) {
            queryRequest = regionsQuery;
        }else{
            queryRequest = queryRequest + " AND " + regionsQuery;
        }
        if (ratingsQuery.isEmpty()) {
        } else if (queryRequest.isEmpty()){
            queryBase = queryBase + " Left join Sector sec on s.id=sec.spot.id Left join Route rou on rou.sector.id=sec.id Left join Length len on len.route.id=rou.id ";
            queryRequest = ratingsQuery;
        }else{
            queryBase = queryBase + " Left join Sector sec on s.id=sec.spot.id Left join Route rou on rou.sector.id=sec.id Left join Length len on len.route.id=rou.id ";
            queryRequest = queryRequest + " AND " + ratingsQuery;
        }
        if (nameSpot.isEmpty()) {
        } else if(queryRequest.isEmpty()) {
            queryRequest = " name like " + "\'%" + nameSpot + "%\'";
        }else{
            queryRequest = queryRequest + " AND " + " name like " + "\'%" + nameSpot + "%\'";
        }
        if (nameSector.isEmpty()) {
        } else if(queryRequest.isEmpty()) {
            queryBase = queryBase + "Left JOIN Sector sec on s.id=sec.spot.id ";
            queryRequest = " sec.name like " + "\'%" + nameSector + "%\'";
        }else{
            queryRequest = queryRequest + " AND " + " sec.name like " + "\'%" + nameSpot + "%\'";
        }

        queryBase = queryBase +" where "+ queryRequest;
//typed query
        return spotDao.researchSpotByParameters(queryBase);
    }
}

