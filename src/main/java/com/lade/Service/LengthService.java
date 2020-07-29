package com.lade.Service;

import com.lade.Entity.Length;

import java.util.List;

public interface LengthService {
    List<String> searchRatings();
    List<Length> searchRatingByCheckbox(String query);
}
