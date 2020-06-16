package com.lade.Entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

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
    @ManyToMany
    @JoinTable(name = "topo_has_spot",
            joinColumns = {@JoinColumn(name = "fk_topo")},
            inverseJoinColumns = {@JoinColumn(name = "fk_spot")})
    private Set<Spot> spots = new HashSet<>();

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

    public Set<Spot> getSpots() {
        return spots;
    }

    public void setSpots(Set<Spot> spots) {
        this.spots = spots;
    }
}
