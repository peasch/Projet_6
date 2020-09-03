package com.lade.Controller;

import com.lade.Service.SpotService;
import com.lade.Service.TopoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @Autowired
    private SpotService spotService;
    @Autowired
    private TopoService topoService;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String index(ModelMap model) {
        model.addAttribute("lastSpot", spotService.findLast());
        model.addAttribute("lastTopo",topoService.findLast());
        return "home";
    }

}
