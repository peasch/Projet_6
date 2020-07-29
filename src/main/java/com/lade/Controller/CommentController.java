package com.lade.Controller;

import com.lade.Entity.Commentaire;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.Service.*;
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
public class CommentController {
    @Autowired
    SpotService spotService;
    @Autowired
    UserService userService;
    @Autowired
    CommentaireService commentaireService;
    @Autowired
    SectorService sectorService;

    @RequestMapping(value = "/spots/{spotId}/comment/add", method = RequestMethod.POST)
    public String addComment(@PathVariable(name = "spotId") Integer id, @RequestParam String text, HttpSession session, ModelMap model) {
        Spot spot = spotService.find(id);
        commentaireService.add(commentaireService.toCom(text, (User) session.getAttribute("user"), spot));
        List<Commentaire> comments = commentaireService.findBySpot(spot);
        model.addAttribute("spot", spot);
        model.addAttribute("comments", comments);
        model.addAttribute("user", session.getAttribute("user"));
        model.addAttribute("sectors", sectorService.lister(spot));
        return userService.userConnected(session, "/spot/spotDescribe");
    }

    @RequestMapping(value = "/comment/{commentId}/delete", method = RequestMethod.GET)
    public String deleteComment(@PathVariable(name = "commentId") Integer id, HttpSession session, ModelMap model) {
        User user = (User) session.getAttribute("user");
        Commentaire com = commentaireService.find(id);
        Spot spot =com.getSpot();
        User poster = com.getUser();
        model.addAttribute("spot",spot);
        model.addAttribute("poster", poster);
        model.addAttribute("user", user);
        if (userService.isMember(user) && user.getUserName().equals(poster.getUserName())) {
            commentaireService.delete(commentaireService.find(id));
            return userService.userConnected(session, "/messages/commentDeleted");
        } else if(userService.isAdmin(user)) {
            Boolean roleAdmin=true;
            model.addAttribute("roleAdmin",roleAdmin);
            commentaireService.delete(commentaireService.find(id));
            return userService.userConnected(session, "/messages/commentDeleted");
        }else{
            return userService.userConnected(session, "/messages/notYourMessage");
        }

    }
    @RequestMapping(value = "/comment/{commentId}/modify", method = RequestMethod.GET)
    public String modifyComment(@PathVariable(name = "commentId") Integer id, HttpSession session, ModelMap model) {
        User user = (User) session.getAttribute("user");
        Commentaire com = commentaireService.find(id);
        User poster = com.getUser();
        if (userService.isMember(user) && user.getUserName().equals(poster.getUserName())) {
            model.addAttribute("commentaire",com);
            return userService.userConnected(session, "/messages/updateMessage");
        }else{
            return userService.userConnected(session, "/messages/notYourMessage");
        }
    }

    @RequestMapping(value = "/comment/{commentId}/modified", method = RequestMethod.POST)
    public String modifiedComment(@PathVariable(name = "commentId") Integer id,@RequestParam String text, HttpSession session, ModelMap model) {
        User user = (User) session.getAttribute("user");
        Commentaire com = commentaireService.find(id);
        Spot spot=com.getSpot();
        User poster = com.getUser();
        if (userService.isMember(user) && user.getUserName().equals(poster.getUserName())) {
            commentaireService.modify(com,text);
            List<Commentaire> comments = commentaireService.findBySpot(spot);
            model.addAttribute("spot", spot);
            model.addAttribute("comments", comments);
            model.addAttribute("user", user);
            model.addAttribute("sectors", sectorService.lister(spot));
            return userService.userConnected(session, "/spot/spotDescribe");
        }else{return userService.userConnected(session, "/messages/notYourMessage");}
    }
}
