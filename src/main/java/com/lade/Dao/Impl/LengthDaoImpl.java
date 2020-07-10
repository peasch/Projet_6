package com.lade.Dao.Impl;

import com.lade.Dao.LengthDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Transactional
@Repository
public class LengthDaoImpl implements LengthDao {
    @PersistenceContext
    private EntityManager em;

    @Override
    public List<String> searchRatings(){
        return em.createQuery("SELECT DISTINCT rating from Length l ",String.class).getResultList();
    }

}
