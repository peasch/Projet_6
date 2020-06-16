package com.lade.Service;

import com.lade.Dao.TopoDao;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopoService {

    @Autowired
    TopoDao topoDao;

    public Topo toTopo(String description,String name ,String release, User user) {
        Topo topo =new Topo();
        topo.setApercu(description);
        topo.setName(name);
        topo.setParution(release);
        topo.setOwner(user);
        return topo;
    }

    public List<Topo> topos() {
        return topoDao.topos();
    }

    public Topo find(Integer id){
        return topoDao.find(id);
    }

    public List<Topo> findByUser(User user){
        return topoDao.findByUser(user);
    }

    public Topo ajouter( String describe, String name, String release,User user) {
        return topoDao.ajouter(this.toTopo(describe,name,release,user));
    }
    public List<Topo> toposWithoutUsers(User user){
        return topoDao.toposWithoutUsers(user);
    }
}
