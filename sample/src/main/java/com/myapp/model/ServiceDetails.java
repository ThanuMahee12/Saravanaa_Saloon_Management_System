package com.myapp.model;

public class ServiceDetails {
    private String servicecode;
    private String servicename;
    private double serviceamount;
    private String serviceDescription;
    private int ratigservice;

    public String getServicecode() {
        return servicecode;
    }

    public void setServicecode(String servicecode) {
        this.servicecode = servicecode;
    }

    public String getServicename() {
        return servicename;
    }

    public void setServicename(String servicename) {
        this.servicename = servicename;
    }

    public double getServiceamount() {
        return serviceamount;
    }

    public void setServiceamount(double serviceamount) {
        this.serviceamount = serviceamount;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public int getRatigservice() {
        return ratigservice;
    }

    public void setRatigservice(int ratigservice) {
        this.ratigservice = ratigservice;
    }
}
