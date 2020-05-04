package com.lade.Entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "spot")
public class Spot implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "official_Lade")
    private Boolean OfficialLade;
    @Column(name = "name")
    private String name = "";
    @Column(name = "adress")
    private String adress = "";
    @Column(name = "latitude")
    private String latitude = "";
    @Column(name = "longitude")
    private String longitude = "";
    @ManyToOne
    @JoinColumn(name = "fk_user")
    private User user;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getOfficialLade() {
        return OfficialLade;
    }

    public void setOfficialLade(Boolean officialLade) {
        OfficialLade = officialLade;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
