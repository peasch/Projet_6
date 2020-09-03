package com.lade.Service.Impl;

import com.lade.Dao.CommentaireDao;
import com.lade.Entity.Commentaire;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.Service.CommentaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Service
public class CommentaireServiceImpl implements CommentaireService {
    @Autowired
    CommentaireDao commentaireDao;

    public String dateToday() {
        Locale locale = new Locale("fr", "FR");
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT, locale);
        DateFormat timeFormat = DateFormat.getTimeInstance(DateFormat.DEFAULT, locale);
        return "le " + dateFormat.format(new Date())+ " à " +timeFormat.format(new Date());
    }

    public Commentaire toCom(String text, User user, Spot spot) {
        Commentaire com = new Commentaire();
        com.setDate(this.dateToday());
        com.setSpot(spot);
        com.setText(text.trim());
        com.setUser(user);
        return com;
    }

    public Commentaire add(Commentaire com) {
        return commentaireDao.add(com);
    }

    public List<Commentaire> findBySpot(Spot spot){
        return commentaireDao.findBySpot(spot);
    }

    public Commentaire find(Integer id){
        return commentaireDao.find(id);
    }
    public void delete(Commentaire com){
        commentaireDao.delete(com);
    }
    public Commentaire modify(Commentaire com,String text){
        com.setText(text);
        com.setDate(this.dateToday());
        return commentaireDao.update(com);
    }
}
