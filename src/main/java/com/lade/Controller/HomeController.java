package com.lade.Controller;

import com.lade.Dao.SpotDao;
import com.lade.Service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @Autowired
    private SpotService spotService;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String index(ModelMap model) {
        model.addAttribute("lastSpot",spotService.findLast());
        return "index";
    }

}
