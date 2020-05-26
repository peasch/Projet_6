package com.lade.Dao;

import com.lade.Entity.User;
import org.springframework.stereotype.Service;


public interface UserDao {

    User ajouter(User user);
    User existingUser (String userName);
    User findById(Integer id);
}
