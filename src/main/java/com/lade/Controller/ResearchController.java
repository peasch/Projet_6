package com.lade.Controller;

import com.lade.Entity.User;
import com.lade.Service.SpotService;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class ResearchController {
@Autowired
    UserService userService;
@Autowired
    SpotService spotService;

    @RequestMapping(value = "/lfSpot", method = RequestMethod.GET)
    public String lookingForSpot(ModelMap model, HttpSession session) {
        model.addAttribute("spots",spotService.lister());
        return userService.userConnected(session,"lfSpot");
    }
}
