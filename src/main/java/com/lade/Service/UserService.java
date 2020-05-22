package com.lade.Service;

import com.lade.Entity.User;
import org.springframework.stereotype.Service;

@Service
public class UserService extends User {

    public User toUser(String userName,String name,String firstName,String password,String email){
        User user=new User();
        user.setUserName(userName);
        user.setName(name);
        user.setFirstName(firstName);
        user.setPassword(password);
        user.setEmail(email);
        user.setMember(false);
        return user;
    }
}
