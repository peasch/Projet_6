package com.lade.Controller;

import com.lade.Dao.SpotDao;
import com.lade.Dao.UserDao;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.Service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SpotController {

    @Autowired
    private SpotDao spotDao;
    @Autowired
    private SpotService spotService;
@Autowired
private UserDao userDao;

    @RequestMapping(value = "/spots/{spotId}", method = RequestMethod.GET)
    public String spotdescribe(@PathVariable(name = "spotId") Integer id, ModelMap model) {
        Spot spot= spotDao.find(id);
        model.addAttribute("spot", spot);
        model.addAttribute("user",spot.getUser());
        return "spotDescribe";
    }

    @RequestMapping(value = "/spots", method = RequestMethod.GET)
    public String listSpot(ModelMap model) {
        List<Spot> spots = spotDao.lister();
        model.addAttribute("spots", spots);
        return "spots";
    }

@RequestMapping(value="/addSpot", method = RequestMethod.GET)
    public String addSpot(){
        return "addSpot";
}

@RequestMapping(value="/addedSpot",method =RequestMethod.POST)
    public String addedSpot(@RequestParam String name, @RequestParam String adress, @RequestParam String latitude, @RequestParam String longitude, HttpSession session){
    User user = (User) session.getAttribute("user");
    session.setAttribute("spot",spotDao.ajouter(spotService.toSpot(name,adress, latitude,longitude, user)));
    session.setAttribute("userName",user.getUserName());
    return "addedSpot";
}


}
