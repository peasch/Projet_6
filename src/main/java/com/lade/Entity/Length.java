package com.lade.Entity;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name="length")
public class Length implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="rating")
    private String rating ="";
    @Column(name="length")
    private int lentgh;
    @ManyToOne
    @JoinColumn(name="fk_route")
    private Route route;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public int getLentgh() {
        return lentgh;
    }

    public void setLentgh(int lentgh) {
        this.lentgh = lentgh;
    }

    public Route getRoute() {
        return route;
    }

    public void setRoute(Route route) {
        this.route = route;
    }

    public Length() {
    }
}
