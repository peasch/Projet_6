package com.lade.Service.Impl;

import com.lade.Dao.UserDao;
import com.lade.Entity.User;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public User toUser(String userName,String name,String firstName,String password,String email){
        User user=new User();
        user.setUserName(userName.trim());
        user.setName(name.trim());
        user.setFirstName(firstName.trim());
        user.setPassword(password.trim());
        user.setEmail(email.trim());
        user.setMember(false);
        user.setAdmin(false);
        return user;
    }

    public String userConnected(HttpSession session,String link){
        if(session.getAttribute("userName")!=null){
            return link;
        }else {
            return "/account/notConnected";
        }
    }

    public Boolean existingUser(String userName) {
        return userDao.existingUser(userName);
    }

    public User addUser(String userName,String name,String firstName,String password,String email){
        return userDao.ajouter(this.toUser(userName, name, firstName, password, email));
    }

    public Boolean isAdmin(User user){
        User userAdmin =this.findById(user.getId());
        Boolean admin = userAdmin.getAdmin();
        if(admin){
            return true;
        }else{
            return false;
        }
    }
    public User findById(Integer id){
        return userDao.findById(id);
    }

    public User findUserByUserName(String userName){
        return userDao.findUserByUserName(userName);
    }

    public List<User> userList(){
        return userDao.userList();
    }

    public User upgradeMember(User user){
        user.setMember(true);
        return userDao.update(user);
    }

    public Boolean isMember(User user){
        User userMember =this.findById(user.getId());
        Boolean member = userMember.getMember();
        if(member){
            return true;
        }else{
            return false;
        }
    }
}
