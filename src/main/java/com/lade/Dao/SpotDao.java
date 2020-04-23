package com.lade.Dao;
import com.lade.Entity.Spot;

import java.util.List;

public interface SpotDao {

    void ajouter(Spot spot);
    List<Spot> lister();
}
