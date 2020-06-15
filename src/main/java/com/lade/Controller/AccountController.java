package com.lade.Controller;

import com.lade.Dao.UserDao;
import com.lade.Entity.User;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@Scope("session")
public class AccountController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/connexion", method = RequestMethod.GET)
    public String connexion() {
        return "connexion";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
        User conn = userService.existingUser(username);
        if (conn.getPassword().equals(password)) {
            session.setAttribute("user", conn);
            session.setAttribute("userName", conn.getUserName());
            return "connected";
        } else {

            return "errorconnect";
        }

    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(HttpSession session) {
        if(session.getAttribute("userName")!=null){
            session.invalidate();
            return "alreadyConnected";

        }else {
        return "registration";}
    }

    @RequestMapping(value = "/registered", method = RequestMethod.POST)
    public String registered(@RequestParam("username") String username, @RequestParam("nom") String name,
                             @RequestParam("prenom") String firstName, @RequestParam("email") String email,
                             @RequestParam("password") String password, HttpSession session) {
        session.setAttribute("user",userService.addUser(username, name, firstName, password, email));
        return "addedUser";
    }

    @RequestMapping(value ="/disconnect",method = RequestMethod.GET)
    public String deconnexion(HttpSession session){
        session.invalidate();
        return "disconnected";
    }
}
