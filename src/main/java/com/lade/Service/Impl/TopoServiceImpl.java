package com.lade.Service.Impl;

import com.lade.Dao.TopoDao;
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
@Override
    public Topo toTopo(String description, String name, String release, User user) {
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String time = dateFormat.format(date);
        Topo topo = new Topo();
        topo.setApercu(description.trim());
        topo.setName(name.trim());
        topo.setParution(release.trim());
        topo.setOwner(user);
        topo.setPublication(time);
        topo.setAvailable(true);
        return topo;
    }
    @Override
    public List<Topo> topos() {
        return topoDao.topos();
    }
    @Override
    public Topo find(Integer id) {
        return topoDao.find(id);
    }
    @Override
    public List<Topo> findByUser(User user) {
        return topoDao.findByUser(user);
    }
    @Override
    public Topo ajouter(String describe, String name, String release, User user) {
        return topoDao.ajouter(this.toTopo(describe, name, release, user));
    }
    @Override
    public List<Topo> toposWithoutUsers(User user) {
        return topoDao.toposWithoutUsers(user);
    }
    @Override
    public List<Topo> findUnavailable(User user) {
        return topoDao.findUnavailable(user);
    }
    @Override
    public Topo retourDispo(Topo topo) {
        topo.setAvailable(true);
        return topoDao.updateTopo(topo);
    }
    @Override
    public Topo updateTopo(Topo topo) {
        return topoDao.updateTopo(topo);
    }
    @Override
    public Topo findLast(){
        return topoDao.findLast();
    }
}
