package com.lade.Entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "route")
public class Route implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "fk_sector")
    private Sector sector;

    @Column(name = "sector_route_id")
    private Integer sectorRouteId;

    @OneToMany(mappedBy = "route",fetch=FetchType.LAZY)
    private Set<Length> lengths = new HashSet<>();

    public Set<Length> getLengths() {
        return lengths;
    }

    public void setLengths(Set<Length> lengths) {
        this.lengths = lengths;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Sector getSector() {
        return sector;
    }

    public void setSector(Sector sector) {
        this.sector = sector;
    }

    public Integer getSectorRouteId() {
        return sectorRouteId;
    }

    public void setSectorRouteId(Integer sectorRouteId) {
        this.sectorRouteId = sectorRouteId;
    }

    public Route() {
    }
}
