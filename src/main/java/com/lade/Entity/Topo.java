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
}
