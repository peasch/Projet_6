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
    @Column(name = "description")
    private String description = "";
    @Column(name = "release")
    private String release = "";
    @ManyToMany
    @JoinTable(name = "topo_has_spot",
            joinColumns = {@JoinColumn(name = "fk_topo")},
            inverseJoinColumns = {@JoinColumn(name = "fk_spot")})
    private Set<Spot> spots = new HashSet<>();

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRelease() {
        return release;
    }

    public void setRelease(String release) {
        this.release = release;
    }

    public Set<Spot> getSpots() {
        return spots;
    }

    public void setSpots(Set<Spot> spots) {
        this.spots = spots;
    }
}
