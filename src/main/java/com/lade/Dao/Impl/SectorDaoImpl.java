package com.lade.Dao.Impl;


import com.lade.Dao.SectorDao;
import com.lade.Entity.Sector;
import com.lade.Entity.Spot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
@Transactional
@Repository
public class SectorDaoImpl implements SectorDao {

    @PersistenceContext
    private EntityManager em;


    @Override
    public void ajouter(Sector sector) {

    }

    @Override
    public List<Sector> lister(Integer spotId) {
        return null;
    }


   /* private DaoFactory daoFactory;
    List<Sector> sectors =new ArrayList<>();
    public SectorDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public void ajouter(Sector sectorPlus) {
        Connection connexion;
        PreparedStatement preparedStatement;
        try {
            connexion = daoFactory.getConnexion();
            preparedStatement = connexion.prepareStatement("INSERT INTO sector(name,description,spot_id) VALUES (?,?,?);");
            preparedStatement.setString(1, sectorPlus.getName());
            preparedStatement.setString(2, sectorPlus.getDescription());
            //preparedStatement.setInt(3, sectorPlus.getSpotId());
            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Sector> lister(Integer spotId) {
        Connection connexion;
        try {
            connexion = daoFactory.getConnexion();
            Statement statement = connexion.createStatement();
            ResultSet resultat = statement.executeQuery("SELECT * FROM sector  WHERE spot_id ="+ spotId +";");
            sectors.clear();
            while (resultat.next()) {
                String name = resultat.getString("name");
                String description = resultat.getString("description");
                Integer sectorId = resultat.getInt("id");
                Sector sector = new Sector();
                sector.setName(name);
                sector.setDescription(description);
               // sector.setSectorId(sectorId);
                sectors.add(sector);
            }
            /*System.out.println("voici la liste des spots : ");
            for (int i = 0; i < sectors.size(); i++) {
                Sector sector = sectors.get(i);
                System.out.println("nom du secteur : " + "\t" + sector.getName());
                System.out.println("description du secteur : " + "\t" + sector.getDescription());
                System.out.println("-------------------------------------------------------------");

            }
            resultat.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sectors;
    }*/
}
