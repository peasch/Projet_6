package com.lade.Service.Impl;

import com.lade.Dao.ReservationDao;
import com.lade.Dao.TopoDao;
import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import com.lade.Service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Service
public class ReservationServiceImpl implements ReservationService {

@Autowired
private ReservationDao reservationDao;
@Autowired
private TopoDao topoDao;

    public String dateToday(){
        Locale locale = new Locale("fr", "FR");
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT, locale);
        DateFormat timeFormat = DateFormat.getTimeInstance(DateFormat.DEFAULT, locale);
        String date = "le " + dateFormat.format(new Date())+ " à " +timeFormat.format(new Date());
         return date;
    }

    public Reservation toResa(User user, String date, Topo topo){
        Reservation resa = new Reservation();
        resa.setCaller(user);
        resa.setDateReservation(date);
        resa.setTopo(topo);

        return resa;
    }

    public Reservation add(User caller,Topo topo) {
        return reservationDao.add(this.toResa(caller, this.dateToday(), topo));
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
        Locale locale = new Locale("fr", "FR");
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT, locale);
        DateFormat timeFormat = DateFormat.getTimeInstance(DateFormat.DEFAULT, locale);
        String date = "le " + dateFormat.format(new Date())+ " à " +timeFormat.format(new Date());
        reservation.setAccepted(true);
        reservation.setAcceptDate(date);
       Topo topo= reservation.getTopo();
       topo.setAvailable(false);
       topoDao.updateTopo(topo);
        return reservationDao.acceptResa(reservation);
    }

    public void cancelResa(Reservation reservation){
        Topo topo= reservation.getTopo();
        topo.setAvailable(true);
        topoDao.updateTopo(topo);
        reservation.setReturned(true);
        reservationDao.cancelResa(reservation);
    }

    public Reservation update(Reservation reservation){
        return reservationDao.update(reservation);
    }

    public Reservation refuse(Reservation reservation){
        Locale locale = new Locale("fr", "FR");
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT, locale);
        DateFormat timeFormat = DateFormat.getTimeInstance(DateFormat.DEFAULT, locale);
        String date = "le " + dateFormat.format(new Date())+ " à " +timeFormat.format(new Date());
        reservation.setAcceptDate(date);
        reservation.setAccepted(false);
        reservation.setReturned(true);
       return reservationDao.update(reservation);
    }

    public Reservation lastRefused(User user){
        return reservationDao.findLastRefuse(user);
    }

}
