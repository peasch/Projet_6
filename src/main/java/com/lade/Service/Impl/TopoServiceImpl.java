package com.lade.Service.Impl;

import com.lade.Dao.TopoDao;
import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import com.lade.Service.TopoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class TopoServiceImpl implements TopoService {

    @Autowired
    TopoDao topoDao;

    public Topo toTopo(String description, String name, String release, User user) {
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String time = dateFormat.format(date);
        Topo topo = new Topo();
        topo.setApercu(description);
        topo.setName(name);
        topo.setParution(release);
        topo.setOwner(user);
        topo.setPublication(time);
        topo.setAvailable(true);
        return topo;
    }

    public List<Topo> topos() {
        return topoDao.topos();
    }

    public Topo find(Integer id) {
        return topoDao.find(id);
    }

    public List<Topo> findByUser(User user) {
        return topoDao.findByUser(user);
    }

    public Topo ajouter(String describe, String name, String release, User user) {
        return topoDao.ajouter(this.toTopo(describe, name, release, user));
    }

    public List<Topo> toposWithoutUsers(User user) {
        return topoDao.toposWithoutUsers(user);
    }

    public List<Topo> findUnavailable(User user){
        return topoDao.findUnavailable(user);
    }

    public Topo retourDispo(Topo topo){
        topo.setAvailable(true);
        return topoDao.updateTopo(topo);
    }
    public Topo updateTopo(Topo topo){
        return topoDao.updateTopo(topo);
    }
    }
