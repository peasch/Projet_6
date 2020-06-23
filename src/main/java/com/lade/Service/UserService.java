package com.lade.Service;

import com.lade.Dao.UserDao;
import com.lade.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;

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

    public String userConnected(HttpSession session,String link){
        if(session.getAttribute("userName")!=null){
            return link;
        }else {
            return "notConnected";
        }
    }

    public User existingUser(String userName) {
        return userDao.existingUser(userName);
    }

    public User addUser(String userName,String name,String firstName,String password,String email){
        return userDao.ajouter(this.toUser(userName, name, firstName, password, email));
    }
}
