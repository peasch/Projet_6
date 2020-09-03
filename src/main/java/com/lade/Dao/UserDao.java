package com.lade.Dao;

import com.lade.Entity.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserDao {

    User ajouter(User user);
    User findUserByUserName(String userName);
    User findById(Integer id);
    Boolean existingUser(String userName);
    List<User> userList();
    User update(User user);
}
