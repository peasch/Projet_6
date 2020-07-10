package com.lade.Service.Impl;

import com.lade.Dao.CommentaireDao;
import com.lade.Entity.Commentaire;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.Service.CommentaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CommentaireServiceImpl implements CommentaireService {
    @Autowired
    CommentaireDao commentaireDao;

    public Date dateToday() {
        long millis = System.currentTimeMillis();
        return new Date(millis);
    }

    public Commentaire toCom(String text, User user, Spot spot) {
        Commentaire com = new Commentaire();
        com.setDate(this.dateToday());
        com.setSpot(spot);
        com.setText(text);
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
        return commentaireDao.update(com);
    }
}
