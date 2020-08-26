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
        if (userService.userIsConnected(session)) {
            model.addAttribute("spots", spotService.lister());
            model.addAttribute("regions", spotService.searchRegion());
            model.addAttribute("countries", spotService.searchCountry());
            model.addAttribute("ratings", lengthService.searchRatings());
            return  "lfSpot";
        }else{
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/recherche", method = RequestMethod.POST)
    public String researchWithParam(@RequestParam String rating, @RequestParam String region, @RequestParam String[] country, @RequestParam String searchSpot,@RequestParam String searchSector, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
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
            model.addAttribute("uncheckedRegions", spotService.regionUnchecked(regionTable));
            model.addAttribute("uncheckedRatings", lengthService.ratingUnchecked(ratingTable));
            return "lfSpot";
        } else {
            return "/account/notConnected";
        }
    }
}