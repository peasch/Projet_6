package com.lade.Dao;

import com.lade.Entity.Length;

import java.util.List;

public interface LengthDao {
    List<String> searchRatings();
    List<Length> searchRatingCheckbox(String query);
}
