package com.lade.Dao.Impl;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
@Transactional
@Repository
public class SpotDaoImpl implements SpotDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Spot ajouter(Spot spot) {
    em.persist(spot);
    return spot;
    }

    @Override
    public List<Spot> lister() {
        List<Spot> spots=em.createQuery("SELECT s FROM Spot s ",Spot.class).getResultList();
        return spots;
    }

    @Override
    public Spot find(Integer id){
        return em.find(Spot.class,id);
    }

    /*
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
