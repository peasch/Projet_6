package com.lade.Service;

import com.lade.Entity.Spot;
import com.lade.Entity.User;

import java.util.List;

public interface SpotService {
    Spot toSpot(String name, String adress, String latitude, String longitude, String region, String country, User user);

    Spot findLast();

    Spot find(Integer id);

    List<Spot> lister();

    Spot ajouter(String name, String adress, String latitude, String longitude, String region, String country, User user);

    Spot approuve(Spot spot);

    Spot downgrade(Spot spot);
    List<String> stringToList(String string);
    List<String> searchRegion();
    List<String> searchCountry();
    String convertRegionToQuery(List<String> regions);
    String convertCountryToQuery(List<String> countries);
    String convertRatingToQuery(List<String> ratings);
    List<String> countryUnchecked(List<String>countriesChecked);
    List<String> regionUnchecked(List<String> regionsChecked);
    List<Spot> researchSpotWithParameters(String[] countries,String regions,String ratings, String nameSpot, String nameSector);
    List<String> tabletoList(String[] string);

}