package com.lade.Entity;

public class User {
    String userName = "";
    String password = "";
    String name = "";
    String firstName = "";
    String email = "";
    Boolean Member = false;

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
        return Member;
    }

    public void setMember(Boolean member) {
        Member = member;
    }
}
