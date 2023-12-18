package com.myapp.model;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private String firstname;
    private String lastname;
    private String Contactno;
    private String email;
    private String gender;
    private String password;
    private String nic;

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getContactno() {
        return Contactno;
    }

    public void setContactno(String contactno) {
        Contactno = contactno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", Contactno='" + Contactno + '\'' +
                ", email='" + email + '\'' +
                ", gender=" + gender +
                ", password='" + password + '\'' +
                ", NiC='" + nic + '\'' +
                '}';
    }


}
