package com.lade.Entity;


import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "user")
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "username")
    private String userName = "";
    @Column(name = "password")
    private String password = "";

    @Column(name = "name")
    private String name = "";

    @Column(name = "firstname")
    private String firstName = "";

    @Column(name = "email")
    private String email = "";

    @Column(name = "member")
    private Boolean member = false;

    @Column(name = "admin")
    private Boolean admin = false;


    @OneToMany(mappedBy = "user",fetch = FetchType.LAZY)
    private Set<Spot> spots = new HashSet<>();

    @OneToMany(mappedBy = "owner",fetch = FetchType.LAZY)
    private Set<Topo> topos = new HashSet<>();




    public Set<Topo> getTopos() {
        return topos;
    }

    public void setTopos(Set<Topo> topos) {
        this.topos = topos;
    }

    public User() {
    }

    public Boolean getAdmin() {
        return admin;
    }

    public void setAdmin(Boolean admin) {
        this.admin = admin;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getMember() {
        return member;
    }

    public void setMember(Boolean member) {
        this.member = member;
    }

    public Set<Spot> getSpots() {
        return spots;
    }

    public void setSpots(Set<Spot> spots) {
        this.spots = spots;
    }


}