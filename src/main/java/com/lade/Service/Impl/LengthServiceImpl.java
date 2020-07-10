package com.lade.Service.Impl;

import com.lade.Dao.LengthDao;
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
}
