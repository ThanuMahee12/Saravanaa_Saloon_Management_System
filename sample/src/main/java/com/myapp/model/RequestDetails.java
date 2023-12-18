package com.myapp.model;

public class RequestDetails {
    private String OrderCode;
    private String serviceName;
    private String date;
    private String FirstName;
    private String LastName;
    private String staus;

    private String ContactNo;

    public String getContactNo() {
        return ContactNo;
    }

    public void setContactNo(String contactNo) {
        ContactNo = contactNo;
    }

    public String getOrderCode() {
        return OrderCode;
    }

    public void setOrderCode(String orderCode) {
        OrderCode = orderCode;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getStaus() {
        return staus;
    }

    public void setStaus(String staus) {
        this.staus = staus;
    }
}
