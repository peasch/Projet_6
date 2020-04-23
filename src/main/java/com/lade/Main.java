package com.lade;


import com.lade.Dao.DaoFactory;
import com.lade.Dao.SectorDao;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import com.lade.Service.SpotService;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static <Int> void main(String[] args) {

        List<Spot> spotList = new ArrayList<>();
        SpotService spotService = new SpotService();
        SectorDao sectorDao;
        SpotDao spotDao;
        DaoFactory daoFactory = DaoFactory.getInstance();
        sectorDao = daoFactory.getSectorDao();
        spotDao = daoFactory.getSpotDao();
        spotList = spotDao.lister();
       // spotDao.ajouter(spotService.saisirSpot());

        //sectorDao.lister(spotService.spotChoice(spotDao.lister()));


    }
}