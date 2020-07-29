package com.lade.Controller;

import com.lade.Entity.User;
import com.lade.Service.LengthService;
import com.lade.Service.SpotService;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ResearchController {
    @Autowired
    UserService userService;
    @Autowired
    SpotService spotService;
    @Autowired
    LengthService lengthService;

    @RequestMapping(value = "/lfSpot", method = RequestMethod.GET)
    public String lookingForSpot(ModelMap model, HttpSession session) {
        model.addAttribute("spots", spotService.lister());
        model.addAttribute("regions", spotService.searchRegion());
        model.addAttribute("countries", spotService.searchCountry());
        model.addAttribute("ratings", lengthService.searchRatings());
        return userService.userConnected(session, "lfSpot");
    }

    @RequestMapping(value = "/recherche", method = RequestMethod.POST)
    public String researchWithParam(@RequestParam String rating, @RequestParam String region, @RequestParam String[] country, @RequestParam String searchSpot,@RequestParam String searchSector, HttpSession session, ModelMap model) {
        User user = (User) session.getAttribute("user");
        List<String> ratingTable = spotService.stringToList(rating);
        List<String> regionTable = spotService.stringToList(region);
        List<String> countryTable = spotService.tabletoList(country);
        model.addAttribute("spots", spotService.lister());
        model.addAttribute("regions", spotService.searchRegion());
        model.addAttribute("countries", spotService.searchCountry());
        model.addAttribute("ratings", lengthService.searchRatings());
        model.addAttribute("countryTable", countryTable);
        model.addAttribute("ratingTable", ratingTable);
        model.addAttribute("regionTable", regionTable);
        model.addAttribute("found",true);
        model.addAttribute("researchSpots", spotService.researchSpotWithParameters(country,region,rating,searchSpot,searchSector));
        model.addAttribute("uncheckedCountries", spotService.countryUnchecked(countryTable));
        return userService.userConnected(session, "lfSpot");
    }
}
