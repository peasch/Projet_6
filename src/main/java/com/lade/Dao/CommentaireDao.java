package com.lade.Dao;


import com.lade.Entity.Commentaire;
import com.lade.Entity.Spot;

import java.util.List;

public interface CommentaireDao {

    Commentaire add(Commentaire com);
    Commentaire update(Commentaire com);
    Commentaire find(Integer id);
    List<Commentaire> findBySpot(Spot spot);
    void delete(Commentaire com);
}
