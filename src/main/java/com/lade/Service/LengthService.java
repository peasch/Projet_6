
package com.lade.Service;

import com.lade.Entity.Length;
import com.lade.Entity.Route;

import java.util.List;

public interface LengthService {
    List<String> searchRatings();
    List<Length> searchRatingByCheckbox(String query);
    List<String> ratingUnchecked(List<String> ratingsChecked);
    Length toLength(Route route, Integer distance, String rating);
    Length ajouter (Route route, Integer distance, String rating);
}