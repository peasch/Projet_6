package com.lade.Dao;

import com.lade.Entity.User;

public interface UserDao {

    void ajouter(User user);
    int existingUser (String userName, String password);
}
