package com.lade.Service;

import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;

import java.util.Date;
import java.util.List;

public interface ReservationService {
    String dateToday();

    Reservation toResa(User user, String date, Topo topo);

    Reservation add(User caller, Topo topo);

    List<Reservation> findResaByOwner(User user);

    List<Reservation> findResaByCaller(User user);

    Reservation findById(Integer id);

    Reservation acceptResa(Reservation reservation);

    void cancelResa(Reservation reservation);

    Reservation update(Reservation reservation);

    Reservation refuse(Reservation reservation);

    Reservation lastRefused(User user);

}
