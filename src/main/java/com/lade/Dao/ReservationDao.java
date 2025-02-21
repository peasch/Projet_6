package com.lade.Dao;

import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;

import java.util.List;

public interface ReservationDao {
    Reservation add(Reservation reservation);
    Reservation existingResa(User user, Topo topo);
    List<Reservation> findResaByOwner(User user);
    List<Reservation> findResaByCaller(User user);
    Reservation findById(Integer id);
    Reservation acceptResa(Reservation reservation);
    void cancelResa(Reservation reservation);
    Reservation update(Reservation reservation);
    Reservation findLastRefuse(User user);

}
