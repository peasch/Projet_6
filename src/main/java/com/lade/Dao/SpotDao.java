package com.lade.Dao;
import com.lade.Entity.Spot;

import java.util.List;

public interface SpotDao {

    Spot ajouter(Spot spot);
    List<Spot> lister();
}
