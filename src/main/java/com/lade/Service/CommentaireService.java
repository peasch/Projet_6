package com.lade.Service;

import com.lade.Entity.Commentaire;
import com.lade.Entity.Spot;
import com.lade.Entity.User;

import java.util.Date;
import java.util.List;

public interface CommentaireService {
    String dateToday();

    Commentaire toCom(String text, User user, Spot spot);

    Commentaire add(Commentaire com);

    List<Commentaire> findBySpot(Spot spot);

    Commentaire find(Integer id);

    void delete(Commentaire com);

    Commentaire modify(Commentaire com, String text);
}
