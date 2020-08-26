package com.lade.Dao;

import com.lade.Entity.Length;
import com.lade.Entity.Route;

import java.util.List;

public interface LengthDao {
    List<String> searchRatings();
    List<Length> searchRatingCheckbox(String query);
    Length ajouter(Length length);
    Length findLastRouteOfSector(Route route);
}
