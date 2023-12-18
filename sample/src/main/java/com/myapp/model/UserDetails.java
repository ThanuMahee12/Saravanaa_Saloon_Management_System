package com.myapp.model;

public class UserDetails {


    private String gender;
    private int uid;
    private String firstname;
    private String lastname;
    private String email;
    private String contactno;
    private String Nic;

    public UserDetails() {
    }
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender=gender;
    }

    public int getUid() {
        return uid;
    }

    public void setId(int uid) {
        this.uid=uid;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public String getNic() {
        return Nic;
    }

    public void setNic(String nic) {
        Nic = nic;
    }
}
