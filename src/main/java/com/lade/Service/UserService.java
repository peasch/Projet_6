package com.lade.Service;

import com.lade.Entity.User;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    User toUser(String userName, String name, String firstName, String password, String email);

    String userConnected(HttpSession session, String link);

    Boolean existingUser(String userName);

    Boolean isAdmin(User user);

    User findById(Integer id);

    User findUserByUserName(String userName);

    List<User> userList();

    User upgradeMember(User user);

    Boolean isMember(User user);

    User addUser(String userName,String name,String firstName,String password,String email);
}
