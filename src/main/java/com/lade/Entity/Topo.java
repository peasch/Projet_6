package com.lade.Entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "topo")
public class Topo implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "name")
    private String name = "";
    @Column(name = "apercu")
    private String apercu = "";
    @Column(name = "parution")
    private String parution = "";
    @Column(name = "country")
    private String country = "";
    @Column(name = "region")
    private String region = "";
    @Column(name = "publication")
    private String publication;
    @Column(name="available")
    private Boolean available;

    @ManyToOne
    @JoinColumn(name = "fk_user")
    private User owner;


    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public Topo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getApercu() {
        return apercu;
    }

    public void setApercu(String description) {
        this.apercu = description;
    }

    public String getParution() {
        return parution;
    }

    public void setParution(String release) {
        this.parution = release;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getPublication() {
        return publication;
    }

    public void setPublication(String publication) {
        this.publication = publication;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
}
