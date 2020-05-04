package com.lade.Dao;
import com.lade.Entity.Spot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
public class SpotDaoImpl implements SpotDao{
   @Autowired
    private EntityManager em;

    @Override
    public void ajouter(Spot spot) {

    }

    @Override
    public List<Spot> lister() {
        return null;
    }

    /*private DaoFactory daoFactory;
    List<Spot> spots = new ArrayList();

    public SpotDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }


    @Override
    public void ajouter(Spot spotPlus) {
        Connection connexion;
        PreparedStatement preparedStatement;
        try {
            connexion = daoFactory.getConnexion();
            preparedStatement = connexion.prepareStatement("INSERT INTO spot(name,adress,latitude,longitude,user_id) VALUES (?,?,?,?,?);");
            preparedStatement.setString(1, spotPlus.getName());
            preparedStatement.setString(2, spotPlus.getAdress());
            preparedStatement.setString(3, spotPlus.getLatitude());
            preparedStatement.setString(4, spotPlus.getLongitude());
           // preparedStatement.setInt(5,spotPlus.getUserId());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            lister();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Spot> lister() {
        Connection connexion;
        try {
            connexion = daoFactory.getConnexion();
            Statement statement = connexion.createStatement();
            ResultSet resultat = statement.executeQuery("SELECT * FROM spot");
            spots.clear();
            while (resultat.next()) {
                Spot spot = new Spot();
                spot.setName(resultat.getString("name"));
                spot.setAdress(resultat.getString("Adress"));
                spot.setLatitude(resultat.getString("Latitude"));
                spot.setLongitude(resultat.getString("Longitude"));
                spot.setOfficialLade(resultat.getBoolean("official LADE"));
               // spot.setSpotId(resultat.getInt("id"));
                //spot.setUserId(resultat.getInt("user_id"));
                spots.add(spot);
            }

            resultat.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return spots;
    }*/
}
