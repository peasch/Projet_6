package com.lade.Dao.Impl;

import com.lade.Dao.TopoDao;
import com.lade.Entity.Spot;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;


@Transactional
@Repository
public class TopoDaoImpl implements TopoDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Topo> topos() {
        List<Topo> topos = em.createQuery("SELECT t FROM Topo t ", Topo.class).getResultList();
        return topos;
    }

    @Override
    public Topo find(Integer id){
        return em.find(Topo.class,id);
    }

    @Override
    public List<Topo> findByUser(User user){
        return em.createQuery("SELECT t FROM Topo t where t.owner like: user ",Topo.class).setParameter("user",user).getResultList();

    }
    @Override
    public Topo ajouter(Topo topo) {
        em.persist(topo);
        return topo;
    }
    @Override
    public List<Topo> toposWithoutUsers(User user){
        List<Topo> topos = em.createQuery("SELECT t FROM Topo t where t.owner NOT LIKE : user AND t.available IS true",Topo.class).setParameter("user",user).getResultList();
        return topos;
    }

    @Override
    public Topo updateTopo(Topo topo){
        return em.merge(topo);
    }

    @Override
    public List<Topo> findUnavailable(User user){
        return em.createQuery("SELECT t FROM Topo t where t.owner like: user AND t.available is false ",Topo.class).setParameter("user",user).getResultList();

    }
}
