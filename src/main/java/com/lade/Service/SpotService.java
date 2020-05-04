package com.lade.Service;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import java.util.List;
import java.util.Scanner;

public class SpotService {

    Scanner sc = new Scanner(System.in);
     SpotDao spotDao;


    public Spot saisirSpot() {
        Spot spot = new Spot();
        System.out.println("Vous voulez ajouter un spot à la base de données");
        System.out.println("Munissez-vous des nom, adresse, latitude et longitude du spot");

        System.out.println(" nom du spot : ? ");
        spot.setName(sc.nextLine());
        System.out.println(" adresse: ? ");
        spot.setAdress(sc.nextLine());
        System.out.println(" Latitude: ? ");
        spot.setLatitude(sc.nextLine());
        System.out.println(" Longitude: ? ");
        spot.setLongitude(sc.nextLine());
        spot.setOfficialLade(false);
        return spot;
    }

    public Spot quelSpot(Integer i, List spots) {
        return (Spot) spots.get(i-1);

    }


    public int spotChoice(List spots) {
        System.out.println("Quel spot voulez vous ? :");
        System.out.println("||--------------------------------------------------------||");
        for (int i = 0; i < spots.size(); i++) {
            Spot spot = new Spot();
            spot = (Spot) spots.get(i);
            //System.out.println("nom du spot : " + "\t" + spot.getName() + "\t" + spot.getSpotId());
            System.out.println("||--------------------------------------------------------||");
        }
        System.out.println("Saisissez l'id du spot qui vous intéresse :");
        int spotId = sc.nextInt();

        return spotId;
    }
}

