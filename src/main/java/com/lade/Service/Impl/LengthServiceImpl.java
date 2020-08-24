package com.lade.Service.Impl;

import com.lade.Dao.LengthDao;
import com.lade.Entity.Length;
import com.lade.Entity.Spot;
import com.lade.Service.LengthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LengthServiceImpl implements LengthService {
    @Autowired
    LengthDao lengthDao;

   public List<String> searchRatings(){
       return lengthDao.searchRatings();
   }

   public List<Length> searchRatingByCheckbox(String query){ return lengthDao.searchRatingCheckbox(query);}

    @Override
    public List<String> ratingUnchecked(List<String> ratingsChecked) {
        List<String> uncheckedRatings = this.searchRatings();
        for (int i = 0; i < ratingsChecked.size(); i++) {
            for (int j = 0; j < uncheckedRatings.size(); j++) {
                if (ratingsChecked.get(i).equals(uncheckedRatings.get(j))) {
                    uncheckedRatings.remove(j);
                }

            }
        }
        return uncheckedRatings;
    }

}
