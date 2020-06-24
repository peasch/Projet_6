package com.lade.Service;

import com.lade.Dao.ReservationDao;
import com.lade.Dao.TopoDao;
import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class ReservationService {
@Autowired
private ReservationDao reservationDao;
@Autowired
private TopoDao topoDao;

    public Reservation toResa(User user, Date date, Topo topo){
        Reservation resa = new Reservation();
        resa.setCaller(user);
        resa.setDateReservation(date);
        resa.setTopo(topo);

        return resa;
    }

    public Reservation add(Reservation reservation) {
        return reservationDao.add(reservation);
    }

    public User getTopoOwner(Reservation reservation){
        return reservation.getTopo().getOwner();

    }

    public List<Reservation> findResaByOwner(User user){
        return reservationDao.findResaByOwner(user);
    }

    public List<Reservation> findResaByCaller(User user) {
        return reservationDao.findResaByCaller(user);
    }

    public Reservation findById(Integer id){
        return reservationDao.findById(id);}

    public Reservation acceptResa(Reservation reservation){
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        reservation.setAccepted(true);
        reservation.setAcceptDate(date);
       Topo topo= reservation.getTopo();
       topo.setAvailable(false);
       topoDao.updateTopo(topo);
        return reservationDao.acceptResa(reservation);
    }

    public void cancelResa(Reservation reservation){
        reservationDao.cancelResa(reservation);
    }
}
