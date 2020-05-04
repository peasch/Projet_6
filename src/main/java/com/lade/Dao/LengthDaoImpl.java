package com.lade.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
public class LengthDaoImpl implements LengthDao {
    @Autowired
    private EntityManager em;

}
