package com.lade.Entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "spot")
/*@NamedQueries({
        @NamedQuery(
                name = Spot.QN.FIND_ALL_SPOT,
                query = "SELECT s FROM Spot s "),
        @NamedQuery(
                name = Spot.QN.FIND_LAST_SPOT,
                query = "SELECT s from Spot s order by id desc"),
        @NamedQuery(
                name = Spot.QN.FIND_ALL_REGIONS,
                query = "SELECT DISTINCT region from Spot s"),
        @NamedQuery(
                name = Spot.QN.FIND_ALL_COUNTRIES,
                query = "SELECT DISTINCT country from Spot s  "),
        @NamedQuery(
                name =
                query =
        )
})*/
public class Spot implements Serializable {
    /*public static class QN{
        public static final String FIND_ALL_SPOT="Spot.FindAll";
        public static final String FIND_LAST_SPOT="Spot.FindLastSpot";
        public static final String FIND_ALL_REGIONS="Spot.findRegions";
        public static final String FIND_ALL_COUNTRIES="Spot.findCountries";
    }*/
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "official_Lade")
    private Boolean officialLade;
    @Column(name = "name")
    private String name = "";
    @Column(name = "adress")
    private String adress = "";
    @Column(name = "latitude")
    private String latitude = "";
    @Column(name = "longitude")
    private String longitude = "";
    @Column(name="country")
    private String country ="";
    @Column(name="region")
    private String region ="";

    @OneToMany(mappedBy="spot",fetch = FetchType.LAZY)
    private Set<Sector> sectors =new HashSet<>();

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
        return officialLade;
    }

    public void setOfficialLade(Boolean officialLade) {
        this.officialLade = officialLade;
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

    public Set<Sector> getSectors() {
        return sectors;
    }

    public void setSectors(Set<Sector> sectors) {
        this.sectors = sectors;
    }


    public Spot() {
    }
}
